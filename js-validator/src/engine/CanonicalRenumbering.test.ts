import { describe, it, expect, beforeEach } from 'vitest';
import { CanonicalRenumberer } from './CanonicalRenumberer';

describe('CanonicalRenumberer', () => {
  let renumberer: CanonicalRenumberer;

  beforeEach(() => {
    renumberer = new CanonicalRenumberer();
  });

  it('should renumber simple XMI with hierarchical IDs', async () => {
    const xmi = `
      <xmi:XMI xmi:version="2.5.1" xmlns:xmi="http://www.omg.org/spec/XMI/2.5.1">
        <packagedElement xmi:type="uml:Class" xmi:id="UUID-1" name="User">
          <ownedAttribute xmi:id="UUID-2" name="age" type="UUID-1"/>
        </packagedElement>
      </xmi:XMI>
    `;
     
    const idMap = await renumberer.buildIdMap(xmi);
    // packagedElement becomes 'user'
    // ownedAttribute becomes 'user-age'
    expect(idMap.get('UUID-1')).toBe('user');
    expect(idMap.get('UUID-2')).toBe('user-age');
     
    const result = await renumberer.renumber(xmi, idMap);
    expect(result).toContain('xmi:id="user"');
    expect(result).toContain('xmi:id="user-age"');
    expect(result).toContain('type="user"'); 
  });

  it('should handle sibling collisions with suffixes', async () => {
      const xmi = `
        <root>
          <item name="foo" xmi:id="ID1"/>
          <item name="foo" xmi:id="ID2"/>
        </root>
      `;
      const idMap = await renumberer.buildIdMap(xmi);
      expect(idMap.get('ID1')).toBe('root-foo');
      expect(idMap.get('ID2')).toBe('root-foo_2');
  });

  it('should apply XMI 2.5.1 attribute-to-element split', async () => {
      const xmi = '<node xmi:id="ID" name="MyNode" value="100"/>';
      const idMap = await renumberer.buildIdMap(xmi);
      const result = await renumberer.renumber(xmi, idMap);
      
      // xmi:id and xmi:type are attributes. name and value become elements.
      expect(result).toContain('<node xmi:id="mynode">');
      expect(result).toContain('<name>MyNode</name>');
      expect(result).toContain('<value>100</value>');
  });
});
