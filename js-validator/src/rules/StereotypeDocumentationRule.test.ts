import { describe, it, expect } from 'vitest';
import { XmiParser } from '../engine/XmiParser';
import { StereotypeDocumentationRule } from './StereotypeDocumentationRule';

describe('StereotypeDocumentationRule', () => {
  it('should flag properties lacking documentation, but pass ones with comments', () => {
    const parser = new XmiParser();
    const rule = new StereotypeDocumentationRule(parser);

    const mockXmi = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:uml="http://www.omg.org/spec/UML/20131001" xmlns:sysml="http://www.omg.org/spec/SysML/20181001/SysML">
  <ownedAttribute xmi:id="1" name="BadProp" />
  <ownedAttribute xmi:id="2" name="GoodProp">
    <ownedComment xmi:id="3" body="This is totally valid documentation" />
  </ownedAttribute>
  <sysml:Block xmi:id="4" name="BadBlock" />
  <sysml:Requirement xmi:id="5" name="GoodReq">
    <xmi:Documentation>Look doc</xmi:Documentation>
  </sysml:Requirement>
</xmi:XMI>`;

    parser.parse(mockXmi);
    
    const warnings = rule.getWarnings();
    expect(warnings).toHaveLength(2);
    expect(warnings[0]).toContain(`[WARNING] Property/Stereotype 'BadProp'`);
    expect(warnings[0]).toContain('lacks documentation');
    expect(warnings[1]).toContain(`[WARNING] Property/Stereotype 'BadBlock'`);
  });
});
