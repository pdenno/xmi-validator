import { describe, it, expect } from 'vitest';
import { ReportGenerator } from '../engine/ReportGenerator';
import { ValidationSession } from '../engine/ValidationSession';

describe('ReportGenerator', () => {
  it('should generate a valid markdown report for a session', () => {
    const session = new ValidationSession();
    const sessionResults = new Map();
    
    sessionResults.set('test.xmi', {
        allErrors: ['[ERROR] Invalid association at line 10'],
        proprietaryWarnings: ['[WARNING] Sparx extension found'],
        versionWarnings: [],
        docWarnings: ['[WARNING] Missing documentation']
    });

    const md = ReportGenerator.generateMarkdown(session, sessionResults);
    
    expect(md).toContain('# XMI Validation Report');
    expect(md).toContain('## File: test.xmi');
    expect(md).toContain('### Structural UML Constraints (Errors)');
    expect(md).toContain('| [ERROR] Invalid association at line 10 |');
    expect(md).toContain('| [WARNING] Sparx extension found |');
    expect(md).toContain('| [WARNING] Missing documentation |');
  });

  it('should handle clean files in the report', () => {
    const session = new ValidationSession();
    const sessionResults = new Map();
    
    sessionResults.set('clean.xmi', {
        allErrors: [],
        proprietaryWarnings: [],
        versionWarnings: [],
        docWarnings: []
    });

    const md = ReportGenerator.generateMarkdown(session, sessionResults);
    expect(md).toContain('✓ **Validation Passed**');
  });
});
