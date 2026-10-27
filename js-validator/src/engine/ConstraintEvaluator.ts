import { XmiParser } from './XmiParser';
import type { XmiNode } from './XmiParser';
import type { ConstraintDefinition } from '../rules/UmlConstraints';
import type { ValidationSession } from './ValidationSession';

export class ConstraintEvaluator {
  private constraints: Map<string, ConstraintDefinition[]> = new Map();
  private errors: string[] = [];
  private session?: ValidationSession;

  constructor(parser: XmiParser, rules: ConstraintDefinition[], session?: ValidationSession) {
    this.session = session;
    // Group rules by targetType for fast O(1) lookup during SAX stream
    for (const rule of rules) {
      if (!this.constraints.has(rule.targetType)) {
        this.constraints.set(rule.targetType, []);
      }
      this.constraints.get(rule.targetType)!.push(rule);
    }

    parser.on('opentag', (node: XmiNode) => {
      const typeRules = this.constraints.get(node.name) || [];
      for (const rule of typeRules) {
        // Our current evaluate only takes node, but can be extended for session-aware rules
        const result = rule.evaluate(node);
        if (!result.passed) {
          this.errors.push(`[UML Constraint] [${node.name}] ${result.ruleName}: ${result.message}`);
        }
      }
    });
  }

  public getErrors() {
    return this.errors;
  }
}
