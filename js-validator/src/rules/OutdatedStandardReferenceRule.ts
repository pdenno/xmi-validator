import { XmiParser } from '../engine/XmiParser';
import type { XmiNode } from '../engine/XmiParser';
import type { SaxesAttribute } from 'saxes';

export class OutdatedStandardReferenceRule {
  private warnings: string[] = [];

  constructor(parser: XmiParser) {
    parser.on('opentag', (node: XmiNode) => {
      // Check attributes for xmlns: declarations or hrefs
      const attrs = node.attributes as unknown as Record<string, string | SaxesAttribute>;
      for (const attrVal of Object.values(attrs)) {
        const val = typeof attrVal === 'string' ? attrVal : attrVal?.value;
        if (!val || typeof val !== 'string') continue;
        
        // Match OMG Specs URI pattern: http://www.omg.org/spec/<Standard>/<YYYYMMDD>
        const match = val.match(/www\.omg\.org\/spec\/(UML|SysML)\/(\d{8})/);
        if (match) {
          const standard = match[1];
          const timestamp = parseInt(match[2], 10);
          
          if (standard === 'UML' && timestamp < 20161101) {
            this.warnings.push(`[CRITICAL WARNING] Outdated Standard Reference: Document refers to UML ${match[2]} which is older than the latest checked standard (20161101). Line ${node.line}, Column ${node.column}`);
          }
        }
      }
    });
  }

  public getWarnings() {
    return this.warnings;
  }
}
