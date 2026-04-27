import { describe, it, expect } from 'vitest';
import { XmiParser } from '../engine/XmiParser';
import { ToolSpecificExtensionRule } from './ToolSpecificExtensionRule';
import { UmlConsistencyRule } from './UmlConsistencyRule';
import * as fs from 'node:fs';
import * as path from 'node:path';
import { fileURLToPath } from 'node:url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

describe('Sparx EA Consistency Rules', () => {
  const xmiPath = path.resolve(__dirname, '../../../tests/sparx1/ptc-26-02-08.xmi');
  const xmiContent = fs.readFileSync(xmiPath, 'utf-8');

  it('should detect invalid LiteralUnlimitedNatural value "@bit_bound"', () => {
    const parser = new XmiParser();
    const consistencyRule = new UmlConsistencyRule(parser);
    parser.parse(xmiContent);
    
    const errors = consistencyRule.getErrors();
    const bitBoundError = errors.find(e => e.includes('@bit_bound'));
    expect(bitBoundError).toBeDefined();
    expect(bitBoundError).toContain('line 1059');
  });

  it('should detect invalid "ownedAttribute" on InstanceSpecification', () => {
    const parser = new XmiParser();
    const consistencyRule = new UmlConsistencyRule(parser);
    parser.parse(xmiContent);
    
    const errors = consistencyRule.getErrors();
    const ownedAttrError = errors.find(e => e.includes('ownedAttribute') && e.includes('Instance Specification'));
    expect(ownedAttrError).toBeDefined();
    expect(ownedAttrError).toContain('line 1532');
  });

  it('should detect Sparx systems proprietary namespace', () => {
    const parser = new XmiParser();
    const toolRule = new ToolSpecificExtensionRule(parser);
    parser.parse(xmiContent);
    
    const warnings = toolRule.getWarnings();
    const sparxWarning = warnings.find(w => w.includes('sparxsystems.com'));
    expect(sparxWarning).toBeDefined();
  });

  it('should detect Association end referencing an Instance Specification', () => {
    const parser = new XmiParser();
    const consistencyRule = new UmlConsistencyRule(parser);
    parser.parse(xmiContent);
    
    const errors = consistencyRule.getErrors();
    const hasSpecificError = errors.some(e => 
      e.includes('EAID_37AB60EB_B422_4e00_AC58_8C99683DE8B2') && 
      e.includes('referencing an Instance Specification')
    );
    expect(hasSpecificError).toBe(true);
  });
});
