import { XmiParser } from '../engine/XmiParser';
import type { XmiNode } from '../engine/XmiParser';
import type { SaxesAttribute } from 'saxes';

export class StereotypeDocumentationRule {
  private warnings: string[] = [];
  private activeTargetNodes: XmiNode[] = [];
  private hasDocStack: boolean[] = [];

  constructor(parser: XmiParser) {
    parser.on('opentag', (node: XmiNode) => {
      // Check for applied stereotypes, sysml properties, or standard elements
      if (node.name.startsWith('sysml:') || node.name.startsWith('uml:Stereotype') || node.name === 'ownedAttribute' || node.name === 'packagedElement') {
        this.activeTargetNodes.push(node);
        this.hasDocStack.push(false);
      } else if (node.name === 'ownedComment' || node.name === 'xmi:Documentation') {
        if (this.hasDocStack.length > 0) {
          this.hasDocStack[this.hasDocStack.length - 1] = true;
        }
      }
    });

    parser.on('closetag', (node: XmiNode) => {
      if (node.name.startsWith('sysml:') || node.name.startsWith('uml:Stereotype') || node.name === 'ownedAttribute' || node.name === 'packagedElement') {
        const targetNode = this.activeTargetNodes.pop();
        const hadDoc = this.hasDocStack.pop();
        
        if (targetNode && !hadDoc) {
           const attrs = targetNode.attributes as unknown as Record<string, string | SaxesAttribute>;
           let id = 'unknown';
           if (attrs && attrs['xmi:id']) id = typeof attrs['xmi:id'] === 'string' ? attrs['xmi:id'] : attrs['xmi:id'].value;
           
           let name = 'unnamed';
           if (attrs && attrs['name']) name = typeof attrs['name'] === 'string' ? attrs['name'] : attrs['name'].value;

           this.warnings.push(`[WARNING] Property/Stereotype '${name}' (ID: ${id}) of type '${targetNode.name}' lacks documentation. Line ${targetNode.line}`);
        }
      }
    });
  }

  public getWarnings() {
    return this.warnings;
  }
}
