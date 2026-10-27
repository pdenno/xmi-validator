import { describe, it, expect } from 'vitest';
import { XmiParser } from '../engine/XmiParser';
import { ToolSpecificExtensionRule } from './ToolSpecificExtensionRule';

describe('ToolSpecificExtensionRule', () => {
  it('should flag MagicDraw and Sparx extensions as critical warnings with exact lines', () => {
    const parser = new XmiParser();
    const rule = new ToolSpecificExtensionRule(parser);

    const mockXmi = `<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xmlns:uml="http://www.omg.org/spec/UML/20131001">
  <uml:Model xmi:id="Model_1" name="RootNode">
    <xmi:Extension extender="MagicDraw UML 19.0">
      <someProprietaryData/>
    </xmi:Extension>
    <xmi:Extension extender="Sparx Systems Enterprise Architect">
      <someProprietaryData/>
    </xmi:Extension>
    <xmi:Extension extender="Standard UML Extender">
      <someSafeData/>
    </xmi:Extension>
  </uml:Model>
</xmi:XMI>`;

    parser.parse(mockXmi);
    
    const warnings = rule.getWarnings();
    expect(warnings).toHaveLength(2);
    expect(warnings[0]).toContain('[CRITICAL WARNING] Proprietary tool-specific extension found: MagicDraw UML 19.0 at line 4');
    expect(warnings[1]).toContain('[CRITICAL WARNING] Proprietary tool-specific extension found: Sparx Systems Enterprise Architect at line 7');
  });
});
