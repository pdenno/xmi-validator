import { SaxesParser } from 'saxes';

/**
 * Implements W3C XML-C14N 1.1 and XMI 2.5.1 Canonical Serialization.
 */
export class XMLCanonicalizer {
    private namespaces: Map<string, string> = new Map();
    private rootProcessed: boolean = false;

    public canonicalize(xmlString: string): string {
        const parser = new SaxesParser();
        let result = '';
        this.namespaces.clear();
        this.rootProcessed = false;

        // Pass 1: Collect all namespaces
        const nsParser = new SaxesParser();
        nsParser.on('opentag', (node) => {
            for (const [prefix, uri] of Object.entries((node as any).ns || {})) {
                this.namespaces.set(prefix as string, uri as string);
            }
        });
        nsParser.write(xmlString).close();

        // Pass 2: Canonical Serialization
        parser.on('opentag', (node) => {
            result += `<${node.name}`;

            const attributes = node.attributes;
            const xmiAttrs: Record<string, string> = {};
            const otherProps: Record<string, string> = {};

            // Split attributes vs elements per XMI 2.5.1
            for (const [name, attr] of Object.entries(attributes)) {
                const val = typeof attr === 'string' ? attr : (attr as any).value;
                const lowerName = name.toLowerCase();
                
                if (lowerName.includes(':id') || lowerName.includes(':uuid') || lowerName.includes(':type') ||
                    lowerName === 'id' || lowerName === 'uuid' || lowerName === 'type') {
                    xmiAttrs[name] = val;
                } else if (!name.startsWith('xmlns')) {
                    otherProps[name] = val;
                }
            }

            // Add namespaces to root only
            if (!this.rootProcessed) {
                this.namespaces.forEach((uri, prefix) => {
                    const attrName = prefix === '' ? 'xmlns' : `xmlns:${prefix}`;
                    xmiAttrs[attrName] = uri;
                });
                this.rootProcessed = true;
            }

            // Sort and write attributes
            const sortedAttrNames = Object.keys(xmiAttrs).sort();
            for (const name of sortedAttrNames) {
                result += ` ${name}="${this.escapeAttribute(xmiAttrs[name])}"`;
            }

            result += '>';

            // Write other properties as child elements
            const sortedPropNames = Object.keys(otherProps).sort();
            for (const name of sortedPropNames) {
                result += `<${name}>${this.escapeText(otherProps[name])}</${name}>`;
            }
        });

        parser.on('text', (text) => {
            result += this.escapeText(text);
        });

        parser.on('closetag', (node) => {
            result += `</${node.name}>`;
        });

        parser.on('cdata', (text) => {
            result += this.escapeText(text);
        });

        parser.write(xmlString).close();
        return result;
    }

    private escapeText(text: string): string {
        return text
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/\r/g, '&#xD;');
    }

    private escapeAttribute(text: string): string {
        return text
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/"/g, '&quot;')
            .replace(/\t/g, '&#x9;')
            .replace(/\n/g, '&#xA;')
            .replace(/\r/g, '&#xD;');
    }
}
