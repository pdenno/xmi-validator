import { describe, it, expect } from 'vitest';
import { SaxesParser, SaxesTag } from 'saxes';

describe('Saxes XML Parser Engine', () => {
  it('should track exact line and column numbers of XMI tags', () => {
    const parser = new SaxesParser();
    let trackedLine = 0;
    let trackedCol = 0;
    
    parser.on('opentag', (node: SaxesTag) => {
      if (node.name === 'uml:Model') {
        trackedLine = parser.line;
        trackedCol = parser.column;
      }
    });

    const mockXmi = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:uml="http://www.omg.org/spec/UML/20131001">
  <uml:Model xmi:id="Model_1" name="RootNode">
  </uml:Model>
</xmi:XMI>`;

    parser.write(mockXmi).close();
    
    expect(trackedLine).toBe(3);
    expect(trackedCol).toBe(46); // Column depends on the exact internal tracking of the parser end of tag
  });
});
