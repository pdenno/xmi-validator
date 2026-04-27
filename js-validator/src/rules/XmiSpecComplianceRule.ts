import { ValidationSession } from '../engine/ValidationSession';
import type { XmiNode } from '../engine/XmiParser';

/**
 * Validates mandatory constraints from the XMI 2.5.1 specification.
 */
export class XmiSpecComplianceRule {
    private usedIds: Set<string> = new Set();
    private referencedIds: { id: string, line: number }[] = [];
    private definedIds: Set<string> = new Set();

    public validate(session: ValidationSession) {
        this.usedIds.clear();
        this.referencedIds = [];
        this.definedIds.clear();

        // Pass 1: Collect IDs and check uniqueness/format
        const nodes = session.getNodes();
        if (nodes.length === 0) {
            session.addError(`[XMI SPEC] The XMI document is empty or contains no recognized XML elements.`);
            return;
        }

        nodes.forEach(node => {
            this.checkId(node, session);
            this.collectReferences(node);
        });

        // Pass 2: Check Reference Integrity
        this.referencedIds.forEach(ref => {
            if (!this.definedIds.has(ref.id) && !ref.id.includes('#')) {
                // We only flag local references for now; external hrefs are complex
                session.addError(`[XMI SPEC] Broken reference: ID '${ref.id}' is referenced but not defined in this document at line ${ref.line}.`);
            }
        });
    }

    private checkId(node: XmiNode, session: ValidationSession) {
        const id = node.attributes['xmi:id'] || node.attributes['id'];
        if (id) {
            const idStr = typeof id === 'string' ? id : id.value;
            
            // 1. Uniqueness
            if (this.definedIds.has(idStr)) {
                session.addError(`[XMI SPEC] Duplicate xmi:id found: '${idStr}' at line ${node.line}.`);
            }
            this.definedIds.add(idStr);

            // 2. NCName compliance (must not start with digit, no spaces, etc.)
            // Simplified NCName regex
            const ncNameRegex = /^[a-zA-Z_][a-zA-Z0-9._-]*$/;
            if (!ncNameRegex.test(idStr)) {
                session.addError(`[XMI SPEC] Invalid xmi:id format: '${idStr}' at line ${node.line} is not a valid XML NCName.`);
            }
        }
    }

    private collectReferences(node: XmiNode) {
        // Check for xmi:idref and other common reference attributes
        for (const [name, attr] of Object.entries(node.attributes)) {
            const isRefAttr = name === 'xmi:idref' || name === 'idref' || name === 'ref' || name === 'href' || name === 'type' || name.endsWith('IDREF');
            if (isRefAttr) {
                const val = typeof attr === 'string' ? attr : (attr as any).value;
                if (val && typeof val === 'string') {
                    this.referencedIds.push({ id: val, line: node.line });
                }
            }
        }
    }
}
