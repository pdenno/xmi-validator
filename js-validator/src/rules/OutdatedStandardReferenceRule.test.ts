import { describe, it, expect } from 'vitest';
import { XmiParser } from '../engine/XmiParser';
import { OutdatedStandardReferenceRule } from './OutdatedStandardReferenceRule';

describe('OutdatedStandardReferenceRule', () => {
  it('should trigger critical warnings for dates older than 20161101', () => {
    const parser = new XmiParser();
    const rule = new OutdatedStandardReferenceRule(parser);

    const mockXmi = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:uml="http://www.omg.org/spec/UML/20110701" href="http://www.omg.org/spec/UML/20131001/UML.xmi">
  <uml:Model xmi:id="1" />
  <uml:ValidRef href="http://www.omg.org/spec/UML/20161101/UML.xmi" />
</xmi:XMI>`;

    parser.parse(mockXmi);
    
    const warnings = rule.getWarnings();
    expect(warnings).toHaveLength(2);
    expect(warnings[0]).toContain(`[CRITICAL WARNING] Outdated Standard Reference: Document refers to UML 20110701`);
    expect(warnings[0]).toContain('Line 2');
    expect(warnings[1]).toContain(`[CRITICAL WARNING] Outdated Standard Reference: Document refers to UML 20131001`);
    expect(warnings[1]).toContain('Line 2');
  });
});
