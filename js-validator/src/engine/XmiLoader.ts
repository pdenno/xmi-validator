export class XmiLoader {
  private dependencyMap: Map<string, string> = new Map();

  constructor(overrides?: Record<string, string>) {
    if (overrides) {
      for (const [key, val] of Object.entries(overrides)) {
        this.dependencyMap.set(key, val);
      }
    }
  }

  public resolveUri(uri: string): string {
    return this.dependencyMap.get(uri) || uri;
  }

  public async load(uri: string): Promise<string> {
    const resolvedUri = this.resolveUri(uri);
    
    // Remote URLs
    if (resolvedUri.startsWith('http://') || resolvedUri.startsWith('https://')) {
      const response = await fetch(resolvedUri);
      if (!response.ok) {
        throw new Error(`Failed to fetch remote XMI from ${resolvedUri}: ${response.statusText}`);
      }
      return await response.text();
    }
    
    // In a browser environment, local file loading requires user input (File API).
    // In Node (CLI), it uses 'fs'. 
    // We assume if it's not http/https, it's either an error in browser or handled externally.
    throw new Error(`Local file loading must be handled by the platform-specific wrapper. Unresolved URI: ${resolvedUri}`);
  }
}
