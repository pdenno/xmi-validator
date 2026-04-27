import { describe, it, expect } from 'vitest';
import { XMLCanonicalizer } from './XMLCanonicalizer';

describe('XMLCanonicalizer', () => {
    const canonicalizer = new XMLCanonicalizer();

    it('should split non-system attributes into elements', () => {
        const input = '<foo c="3" a="1" b="2"></foo>';
        // Only id, type, uuid remain as attributes. a, b, c move to elements.
        const expected = '<foo><a>1</a><b>2</b><c>3</c></foo>';
        expect(canonicalizer.canonicalize(input)).toBe(expected);
    });

    it('should use start and end tags for empty elements', () => {
        const input = '<foo/>';
        const expected = '<foo></foo>';
        expect(canonicalizer.canonicalize(input)).toBe(expected);
    });

    it('should move attributes to elements and escape them', () => {
        const input = '<foo bar="&amp; &lt; &gt; &quot; \' "></foo>';
        // bar moves to <bar>, and inside text &gt; is escaped
        const expected = '<foo><bar>&amp; &lt; &gt; " \' </bar></foo>';
        expect(canonicalizer.canonicalize(input)).toBe(expected);
    });

    it('should handle nested elements correctly', () => {
        const input = '<root><child b="2" a="1"/></root>';
        const expected = '<root><child><a>1</a><b>2</b></child></root>';
        expect(canonicalizer.canonicalize(input)).toBe(expected);
    });

    it('should preserve text content and escape it', () => {
        const input = '<foo>Hello &amp; &lt; World</foo>';
        const expected = '<foo>Hello &amp; &lt; World</foo>';
        expect(canonicalizer.canonicalize(input)).toBe(expected);
    });
});
