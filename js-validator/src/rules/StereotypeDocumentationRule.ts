import { XmiParser } from '../engine/XmiParser';
import type { XmiNode } from '../engine/XmiParser';
import type { SaxesAttribute } from 'saxes';
import { evaluateIso704Compliance } from '../engine/MetadataStandards';
import type { ElementAnnotationQuality } from '../engine/MetadataStandards';

export interface ElementCoverageStats {
  totalElements: number;
  documentedElements: number;
  iso704CompliantElements: number;
  explanatoryNotesCount: number;
  editorialNotesCount: number;
  usageNotesCount: number;
  sourcesCount: number;
  synonymsCount: number;
  abbreviationsCount: number;
  symbolsCount: number;
}

export class StereotypeDocumentationRule {
  private warnings: string[] = [];
  private errors: string[] = [];
  private activeTargetNodes: XmiNode[] = [];
  private docBodiesStack: string[][] = [];
  private annotationQualityStack: ElementAnnotationQuality[] = [];

  private stats: ElementCoverageStats = {
    totalElements: 0,
    documentedElements: 0,
    iso704CompliantElements: 0,
    explanatoryNotesCount: 0,
    editorialNotesCount: 0,
    usageNotesCount: 0,
    sourcesCount: 0,
    synonymsCount: 0,
    abbreviationsCount: 0,
    symbolsCount: 0,
  };

  constructor(parser: XmiParser) {
    parser.on('opentag', (node: XmiNode) => {
      const isTarget = node.name.startsWith('sysml:') || node.name.startsWith('uml:Stereotype') || node.name === 'ownedAttribute' || node.name === 'packagedElement' || node.name === 'ownedOperation';

      if (isTarget) {
        this.activeTargetNodes.push(node);
        this.docBodiesStack.push([]);
        this.annotationQualityStack.push({
          hasLabel: false,
          isLabelValid: false,
          hasDefinition: false,
          isIso704Compliant: false,
          iso704Issues: [],
          hasExplanatoryNotes: false,
          hasEditorialNotes: false,
          hasUsageNotes: false,
          hasSource: false,
          hasSynonyms: false,
          hasAbbreviations: false,
          hasSymbols: false,
        });
      } else if (node.name === 'ownedComment' || node.name === 'xmi:Documentation' || node.name.startsWith('cmns-av:') || node.name.startsWith('skos:')) {
        if (this.docBodiesStack.length > 0) {
          const attrs = node.attributes as unknown as Record<string, string | SaxesAttribute>;
          let body = '';
          if (attrs) {
            if (attrs['body']) body = typeof attrs['body'] === 'string' ? attrs['body'] : attrs['body'].value;
            else if (attrs['value']) body = typeof attrs['value'] === 'string' ? attrs['value'] : attrs['value'].value;
          }

          if (body) {
            this.docBodiesStack[this.docBodiesStack.length - 1].push(body);
          } else {
            // Signal documentation element exists even if body text parsed in text nodes
            this.docBodiesStack[this.docBodiesStack.length - 1].push('Present');
          }

          // Evaluate Section D items on active top element
          const currQuality = this.annotationQualityStack[this.annotationQualityStack.length - 1];
          if (currQuality && body) {
            const lower = body.toLowerCase();
            if (lower.includes('explanatory') || node.name === 'cmns-av:explanatoryNote') currQuality.hasExplanatoryNotes = true;
            if (lower.includes('todo') || lower.includes('editorial') || node.name === 'cmns-av:editorialNote' || node.name === 'skos:editorialNote') currQuality.hasEditorialNotes = true;
            if (lower.includes('usage') || node.name === 'cmns-av:usageNote') currQuality.hasUsageNotes = true;
            if (lower.includes('source') || lower.includes('adapted from') || node.name === 'cmns-av:adaptedFrom' || node.name === 'cmns-av:directSource') currQuality.hasSource = true;
            if (lower.includes('synonym') || node.name === 'cmns-av:synonym' || node.name === 'skos:altLabel') currQuality.hasSynonyms = true;
            if (lower.includes('abbreviation') || lower.includes('acronym') || node.name === 'cmns-av:abbreviation' || node.name === 'cmns-av:acronym') currQuality.hasAbbreviations = true;
            if (lower.includes('symbol') || node.name === 'cmns-av:symbol') currQuality.hasSymbols = true;
          }
        }
      }
    });

    parser.on('closetag', (node: XmiNode) => {
      const isTarget = node.name.startsWith('sysml:') || node.name.startsWith('uml:Stereotype') || node.name === 'ownedAttribute' || node.name === 'packagedElement' || node.name === 'ownedOperation';

      if (isTarget) {
        const targetNode = this.activeTargetNodes.pop();
        const docBodies = this.docBodiesStack.pop() || [];
        const quality = this.annotationQualityStack.pop();

        if (targetNode) {
          const attrs = targetNode.attributes as unknown as Record<string, string | SaxesAttribute>;
          let id = 'unknown';
          if (attrs && attrs['xmi:id']) id = typeof attrs['xmi:id'] === 'string' ? attrs['xmi:id'] : attrs['xmi:id'].value;

          let name = 'unnamed';
          if (attrs && attrs['name']) name = typeof attrs['name'] === 'string' ? attrs['name'] : attrs['name'].value;

          // Skip internal base_ properties from strict documentation warnings
          if (name.startsWith('base_')) return;

          this.stats.totalElements++;

          // Section C.1: Label
          if (name === 'unnamed' || !name.trim()) {
            this.errors.push(`[ERROR] Element Label Violation (Section C.1): Element (ID: ${id}) of type '${targetNode.name}' is named '${name}', which is not allowed. Line ${targetNode.line}`);
          } else {
            if (quality) {
              quality.hasLabel = true;
              quality.isLabelValid = true;
            }
          }

          // Section C.2: Definition & ISO 704 Compliance
          const definitionText = docBodies.find(b => b && b !== 'Present') || (docBodies.length > 0 ? docBodies[0] : '');

          if (!definitionText) {
            this.warnings.push(`[WARNING] Property/Stereotype '${name}' (ID: ${id}) of type '${targetNode.name}' lacks documentation. Line ${targetNode.line}`);
          } else {
            this.stats.documentedElements++;
            if (quality) quality.hasDefinition = true;

            const isoCheck = evaluateIso704Compliance(name, definitionText);
            if (!isoCheck.isCompliant) {
              isoCheck.issues.forEach(issue => {
                this.warnings.push(`[WARNING] ISO 704 Quality Issue (Section C.2) for '${name}' (ID: ${id}): ${issue} Line ${targetNode.line}`);
              });
            } else {
              this.stats.iso704CompliantElements++;
              if (quality) quality.isIso704Compliant = true;
            }
          }

          // Update Section D statistics
          if (quality) {
            if (quality.hasExplanatoryNotes) this.stats.explanatoryNotesCount++;
            if (quality.hasEditorialNotes) this.stats.editorialNotesCount++;
            if (quality.hasUsageNotes) this.stats.usageNotesCount++;
            if (quality.hasSource) this.stats.sourcesCount++;
            if (quality.hasSynonyms) this.stats.synonymsCount++;
            if (quality.hasAbbreviations) this.stats.abbreviationsCount++;
            if (quality.hasSymbols) this.stats.symbolsCount++;
          }
        }
      }
    });
  }

  public getWarnings(): string[] {
    return this.warnings;
  }

  public getErrors(): string[] {
    return this.errors;
  }

  public getStats(): ElementCoverageStats {
    return this.stats;
  }
}
