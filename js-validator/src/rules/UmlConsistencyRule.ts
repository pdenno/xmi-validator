import { XmiParser } from '../engine/XmiParser';
import type { XmiNode } from '../engine/XmiParser';
import type { ValidationSession } from '../engine/ValidationSession';

export class UmlConsistencyRule {
  private errors: string[] = [];
  private localNodes: Map<string, XmiNode> = new Map();
  private session?: ValidationSession;
  private stack: XmiNode[] = [];
  private associations: XmiNode[] = [];
  private associationEnds: Map<string, string[]> = new Map();
  private nodeParent: Map<string, string> = new Map(); // childId -> parentId
  private propertyTypeId: Map<string, string> = new Map(); // propertyId -> typeId

  constructor(parser: XmiParser, session?: ValidationSession) {
    this.session = session;
    parser.on('opentag', (node: XmiNode) => {
      // Collect ID
      const id = node.attributes['xmi:id'] || node.attributes['xmi:idref'];
      const idStr = typeof id === 'string' ? id : id?.value;
      if (idStr) {
        this.localNodes.set(idStr.toString(), node);
        
        const parent = this.stack[this.stack.length - 1];
        if (parent) {
            const parentId = parent.attributes['xmi:id'];
            const parentIdStr = typeof parentId === 'string' ? parentId : parentId?.value;
            if (parentIdStr) {
                this.nodeParent.set(idStr.toString(), parentIdStr.toString());
            }
        }
      }

      const parent = this.stack[this.stack.length - 1];

      // Track property types (for ends)
      if (node.name === 'type' && parent) {
          const parentIdRef = parent.attributes['xmi:id'];
          const parentId = typeof parentIdRef === 'string' ? parentIdRef : parentIdRef?.value;
          const typeRef = node.attributes['xmi:idref'];
          const typeId = typeof typeRef === 'string' ? typeRef : typeRef?.value;
          if (parentId && typeId) {
              this.propertyTypeId.set(parentId.toString(), typeId.toString());
          }
      }

      // 1. InstanceSpecification Feature Check
      if (parent && (parent.attributes['xmi:type'] === 'uml:InstanceSpecification' || parent.name === 'InstanceSpecification')) {
         if (node.name === 'ownedAttribute') {
            const nameAttr = parent.attributes['name'];
            const nameStr = typeof nameAttr === 'string' ? nameAttr : nameAttr?.value || parent.attributes['xmi:id'] || 'unnamed';
            this.addError(`Feature "ownedAttribute" cannot be set for the element Instance Specification("${nameStr}") with ID ${parent.attributes['xmi:id']}, line number : ${node.line}`, node);
         }
      }

      // 2. LiteralUnlimitedNatural Value Check
      if (node.attributes['xmi:type'] === 'uml:LiteralUnlimitedNatural' || node.name === 'uml:LiteralUnlimitedNatural' || node.name === 'LiteralUnlimitedNatural') {
        const valueAttr = node.attributes['value'];
        const valStr = typeof valueAttr === 'string' ? valueAttr : valueAttr?.value || '';
        if (valStr && valStr !== '*' && isNaN(Number(valStr)) && !valStr.startsWith('EAID_')) {
          this.addError(`Cannot set feature "value" with value "${valStr}" to the element Literal Unlimited Natural. Must be integer or "*".`, node);
        }
      }

      // 3. Track memberEnds for Associations
      if (node.name === 'memberEnd' || node.name === 'ownedEnd') {
          if (parent && (parent.attributes['xmi:type'] === 'uml:Association' || parent.name === 'packagedElement' && parent.attributes['xmi:type'] === 'uml:Association')) {
              const idref = node.attributes['xmi:idref'] || node.attributes['xmi:id'];
              const idrefStr = typeof idref === 'string' ? idref : idref?.value;
              if (idrefStr) {
                  const assocId = parent.attributes['xmi:id'] as string;
                  if (!this.associationEnds.has(assocId)) {
                      this.associationEnds.set(assocId, []);
                  }
                  this.associationEnds.get(assocId)!.push(idrefStr.toString());
              }
          }
      }

      // Track associations for later validation
      if (node.attributes['xmi:type'] === 'uml:Association' || node.name === 'packagedElement' && node.attributes['xmi:type'] === 'uml:Association') {
          this.associations.push(node);
      }

      this.stack.push(node);
    });

    parser.on('closetag', (node: XmiNode) => {
      this.stack.pop();
      if (node.name.toLowerCase().endsWith('xmi') || this.stack.length === 0) {
          this.validateRelationships();
      }
    });
  }

  private getNode(id: string): XmiNode | undefined {
      return this.session?.globalNodes.get(id) || this.localNodes.get(id);
  }

  private validateRelationships() {
    for (const assoc of this.associations) {
      const assocId = assoc.attributes['xmi:id'] as string;
      const memberEnds = this.associationEnds.get(assocId) || [];
      const attrEnds = this.getAttributeMemberEnds(assoc);
      const allEnds = [...memberEnds, ...attrEnds];

      for (const endId of allEnds) {
          const property = this.getNode(endId);
          if (!property) continue;

          // Check 1: Is the property itself owned by an InstanceSpecification?
          const parentId = this.nodeParent.get(endId);
          if (parentId) {
              const parentNode = this.getNode(parentId);
              if (parentNode && (parentNode.attributes['xmi:type'] === 'uml:InstanceSpecification' || parentNode.name === 'InstanceSpecification')) {
                  this.addError(`Association/Relationship end referencing an Instance Specification (via property ${endId}) instead of a Classifier. (Element id is '${assocId}')`, assoc);
                  continue;
              }
          }

          // Check 2: Does the property type reference an InstanceSpecification?
          const typeId = this.propertyTypeId.get(endId);
          if (typeId) {
              const typeNode = this.getNode(typeId);
              if (typeNode && (typeNode.attributes['xmi:type'] === 'uml:InstanceSpecification' || typeNode.name === 'InstanceSpecification')) {
                  this.addError(`Association/Relationship end referencing an Instance Specification (target ${typeId}) instead of a Classifier. (Element id is '${assocId}')`, assoc);
              }
          }
          
          // Check 3: Is the destination direct target an InstanceSpecification?
          if (property.attributes['xmi:type'] === 'uml:InstanceSpecification' || property.name === 'InstanceSpecification') {
              this.addError(`Association/Relationship end directly referencing an Instance Specification instead of a Classifier. (Element id is '${assocId}')`, assoc);
          }
      }
    }
  }

  private getAttributeMemberEnds(node: XmiNode): string[] {
      const ends: string[] = [];
      const attr = node.attributes['memberEnd'];
      if (attr) {
          const val = typeof attr === 'string' ? attr : attr.value;
          ends.push(...val.split(' '));
      }
      return ends;
  }

  private addError(message: string, node: XmiNode) {
    this.errors.push(`[ERROR] ${message} at line ${node.line}, column ${node.column}`);
  }

  public getErrors() {
    return this.errors;
  }
}
