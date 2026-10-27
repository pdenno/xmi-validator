import { XmiParser, XmiNode } from './XmiParser';
import { SaxesAttribute } from 'saxes';

export class CanonicalIdProcessor {
  private idMap: Map<string, string> = new Map();
  private stack: string[] = [];

  constructor(parser: XmiParser) {
    parser.on('opentag', (node: XmiNode) => {
      // Build canonical name based on hierarchy
      const typeName = node.name.replace(':', '_');
      
      const attrs = node.attributes as unknown as Record<string, string | SaxesAttribute>;
      
      let nameAttr = '';
      if (attrs['name']) {
        nameAttr = typeof attrs['name'] === 'string' ? attrs['name'] : attrs['name'].value;
      }
      
      // Clean up spaces or special chars for predictable IDs
      const cleanName = nameAttr.replace(/\s+/g, '_');
      const identifier = cleanName ? `${typeName}_${cleanName}` : `${typeName}`;
      
      this.stack.push(identifier);
      
      const canonicalId = this.stack.join('-');

      let originalId = '';
      if (attrs['xmi:id']) {
        originalId = typeof attrs['xmi:id'] === 'string' ? attrs['xmi:id'] : attrs['xmi:id'].value;
        this.idMap.set(originalId, canonicalId);
      }
    });

    parser.on('closetag', () => {
      this.stack.pop();
    });
  }

  public getCanonicalMapping(): Map<string, string> {
    return this.idMap;
  }
}
