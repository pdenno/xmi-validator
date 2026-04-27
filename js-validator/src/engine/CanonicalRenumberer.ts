import { XmiParser } from './XmiParser';
import type { XmiNode } from './XmiParser';
import { XMLCanonicalizer } from './XMLCanonicalizer';

/**
 * Utility to renumber XMI IDs to the XMI 2.5.1 Section B.5 Canonical Identifier format.
 * Generates deterministic IDs based on the model hierarchy: parentId-baseName.
 */
export class CanonicalRenumberer {
    private idMap: Map<string, string> = new Map();
    private canonicalizer = new XMLCanonicalizer();

    /**
     * First pass: Build a map of all xmi:id attributes to Canonical IDs.
     * Supports progress reporting and cancellation.
     */
    public async buildIdMap(
        xmiContent: string, 
        onProgress?: (percent: number) => void,
        abortSignal?: AbortSignal
    ): Promise<Map<string, string>> {
        const parser = new XmiParser();
        this.idMap.clear();
        
        const stack: { id: string, seenNames: Map<string, number>, isXmiRoot: boolean }[] = [];
        const totalSize = xmiContent.length;
        let processedSize = 0;
        const chunkSize = 100 * 1024; // 100KB chunks

        return new Promise((resolve, reject) => {
            if (abortSignal?.aborted) return reject(new Error('Operation cancelled'));
            
            const abortHandler = () => {
                reject(new Error('Operation cancelled'));
            };
            abortSignal?.addEventListener('abort', abortHandler);

            parser.on('opentag', (node: XmiNode) => {
                const isXmiRoot = node.name.toLowerCase().includes(':xmi') || node.name.toLowerCase() === 'xmi';
                const oldId = node.attributes['xmi:id'] || node.attributes['id'] || node.attributes['xmi:uuid'];
                const rawName = node.attributes['name'];
                const name = typeof rawName === 'string' ? rawName : (rawName as any)?.value;
                
                let baseName = (name || (node.name.includes(':') ? node.name.split(':')[1] : node.name)).toLowerCase();
                baseName = baseName.replace(/[^a-zA-Z0-9._]/g, '_');

                const parent = stack[stack.length - 1];
                let newId = (!parent || parent.isXmiRoot) ? baseName : `${parent.id}-${baseName}`;
                
                if (parent && !parent.isXmiRoot) {
                    const count = (parent.seenNames.get(baseName) || 0) + 1;
                    parent.seenNames.set(baseName, count);
                    if (count > 1) newId += `_${count}`;
                }

                if (oldId) {
                    const idStr = typeof oldId === 'string' ? oldId : oldId.value;
                    if (!this.idMap.has(idStr)) this.idMap.set(idStr, newId);
                }
                stack.push({ id: newId, seenNames: new Map(), isXmiRoot });
            });

            parser.on('closetag', () => {
                stack.pop();
            });

            const processChunk = (start: number) => {
                if (abortSignal?.aborted) return;
                
                const end = Math.min(start + chunkSize, totalSize);
                const chunk = xmiContent.slice(start, end);
                parser.parseRaw(chunk);
                
                processedSize = end;
                if (onProgress) onProgress((processedSize / totalSize) * 50);

                if (end < totalSize) {
                    setTimeout(() => processChunk(end), 0);
                } else {
                    parser.close();
                    abortSignal?.removeEventListener('abort', abortHandler);
                    resolve(this.idMap);
                }
            };

            processChunk(0);
        });
    }

    /**
     * Replaces IDs and then applies XMI 2.5.1 Canonical Serialization.
     */
    public async renumber(
        xmiContent: string, 
        idMap: Map<string, string>,
        onProgress?: (percent: number) => void,
        abortSignal?: AbortSignal
    ): Promise<string> {
        if (abortSignal?.aborted) throw new Error('Operation cancelled');
        
        let result = xmiContent;
        const sortedOldIds = Array.from(idMap.keys()).sort((a, b) => b.length - a.length);
        
        // Step 1: Replace IDs (approx 20% of remaining time)
        for (let i = 0; i < sortedOldIds.length; i++) {
            if (abortSignal?.aborted) throw new Error('Operation cancelled');
            const oldId = sortedOldIds[i];
            const newId = idMap.get(oldId)!;
            const escapedId = oldId.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
            const regex = new RegExp(`(["'])${escapedId}(["'])`, 'g');
            result = result.replace(regex, `$1${newId}$2`);
            
            if (i % 100 === 0 && onProgress) {
                onProgress(50 + (i / sortedOldIds.length) * 10);
            }
        }

        // Step 2: Canonicalize (approx 40% of remaining time)
        if (onProgress) onProgress(60);
        try {
            const canonicalized = this.canonicalizer.canonicalize(result);
            if (onProgress) onProgress(100);
            return canonicalized;
        } catch (e) {
            console.warn('XMI Canonicalization failed:', e);
            return result;
        }
    }
}
