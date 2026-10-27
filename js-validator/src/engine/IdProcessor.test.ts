import { describe, it, expect } from 'vitest';
import { XmiParser } from './XmiParser';
import { CanonicalIdProcessor } from './IdProcessor';

describe('CanonicalIdProcessor', () => {
  it('should generate hierarchical canonical IDs and map them to original UUIDs', () => {
    const parser = new XmiParser();
    const processor = new CanonicalIdProcessor(parser);

    const mockXmi = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:uml="http://www.omg.org/spec/UML/20131001">
  <uml:Model xmi:id="UUID_1" name="Root Node">
    <packagedElement xmi:id="UUID_2" name="SubElement" />
  </uml:Model>
</xmi:XMI>`;

    parser.parse(mockXmi);
    
    const mapping = processor.getCanonicalMapping();
    expect(mapping.size).toBe(2);
    expect(mapping.get('UUID_1')).toBe('xmi_XMI-uml_Model_Root_Node');
    expect(mapping.get('UUID_2')).toBe('xmi_XMI-uml_Model_Root_Node-packagedElement_SubElement');
  });
});
