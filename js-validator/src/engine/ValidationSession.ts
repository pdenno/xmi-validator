import { XmiParser } from './XmiParser';
import type { XmiNode } from './XmiParser';

export class ValidationSession {
    public globalNodes: Map<string, XmiNode> = new Map();
    public uriMap: Map<string, string> = new Map();
    public errors: string[] = [];
    private allNodes: XmiNode[] = [];
    
    /**
     * Pass 1: Collect all nodes and IDs from all files in the set.
     */
    public async registerFiles(files: { name: string, content: string }[]): Promise<void> {
        this.allNodes = [];
        this.globalNodes.clear();
        this.errors = [];

        for (const file of files) {
            const parser = new XmiParser();
            parser.on('opentag', (node: XmiNode) => {
                this.allNodes.push(node);
                const id = node.attributes['xmi:id'] || node.attributes['id'];
                const idStr = typeof id === 'string' ? id : id?.value;
                if (idStr) {
                    this.globalNodes.set(idStr.toString(), node);
                }
            });
            parser.parse(file.content);
        }
    }

    public getNodes(): XmiNode[] {
        return this.allNodes;
    }

    public addError(message: string) {
        this.errors.push(message);
    }

    /**
     * Configure URI mappings (e.g. mapping an old OMG URL to a local beta file).
     */
    public setUriMapping(oldUri: string, newUri: string) {
        this.uriMap.set(oldUri, newUri);
    }

    public getResolvedUri(uri: string): string {
        return this.uriMap.get(uri) || uri;
    }
}
