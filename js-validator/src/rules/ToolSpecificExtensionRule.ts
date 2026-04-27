import { XmiParser } from '../engine/XmiParser';
import type { XmiNode } from '../engine/XmiParser';

export class ToolSpecificExtensionRule {
  private warnings: string[] = [];

  constructor(parser: XmiParser) {
    // Check for tool-specific xmi:Extension
    parser.on('xmi:Extension', (node: XmiNode) => {
      const extenderAttr = node.attributes['extender'];
      const extenderStr = typeof extenderAttr === 'string' ? extenderAttr : extenderAttr?.value || '';

      if (this.isToolSpecific(extenderStr)) {
        this.addWarning(`Proprietary tool-specific extension found: ${extenderStr}`, node);
      }
    });

    // Check for tool-specific namespaces in the root element
    parser.on('xmi:XMI', (node: XmiNode) => {
      for (const attr of Object.values(node.attributes)) {
        const val = typeof attr === 'string' ? attr : attr?.value;
        if (val && this.isProprietaryNamespace(val)) {
          this.addWarning(`Model references proprietary tool-specific namespace/profile: ${val}`, node);
        }
      }
    });

    // Check for tool-specific profiles in profileApplication
    parser.on('uml:Profile', (node: XmiNode) => {
      const hrefAttr = node.attributes['href'];
      const hrefStr = typeof hrefAttr === 'string' ? hrefAttr : hrefAttr?.value || '';
      if (this.isProprietaryNamespace(hrefStr)) {
         this.addWarning(`Model imports proprietary tool-specific profile: ${hrefStr}`, node);
      }
    });
  }

  private isToolSpecific(str: string): boolean {
    const lower = str.toLowerCase();
    return lower.includes('magicdraw') || 
           lower.includes('cameo') || 
           lower.includes('enterprise architect') || 
           lower.includes('sparx');
  }

  private isProprietaryNamespace(uri: string): boolean {
    return uri.includes('sparxsystems.com') || 
           uri.includes('nomagic.com') || 
           uri.includes('magicdraw.com');
  }

  private addWarning(message: string, node: XmiNode) {
    this.warnings.push(`[CRITICAL WARNING] ${message} at line ${node.line}, column ${node.column}`);
  }

  public getWarnings() {
    return this.warnings;
  }
}
