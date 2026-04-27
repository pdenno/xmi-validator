import { describe, it, expect, vi } from 'vitest';
import { XmiLoader } from './XmiLoader';

// Mock global fetch for testing remote retrieval
global.fetch = vi.fn(() =>
  Promise.resolve({
    ok: true,
    statusText: 'OK',
    text: () => Promise.resolve('<xmi:XMI></xmi:XMI>'),
  })
) as unknown as typeof fetch;

describe('XmiLoader Dependency Resolver', () => {
  it('should resolve specific dependencies using the override map', () => {
    const loader = new XmiLoader({
      'http://www.magicdraw.com/schemas/SysML_profile.xmi': 'https://company.internal/sysml-standard-fallback.xmi'
    });

    const resolved = loader.resolveUri('http://www.magicdraw.com/schemas/SysML_profile.xmi');
    expect(resolved).toBe('https://company.internal/sysml-standard-fallback.xmi');
  });

  it('should fetch remote XMI references successfully', async () => {
    const loader = new XmiLoader();
    const result = await loader.load('https://www.omg.org/spec/UML/20131001/UML.xmi');
    
    expect(result).toBe('<xmi:XMI></xmi:XMI>');
    expect(global.fetch).toHaveBeenCalledWith('https://www.omg.org/spec/UML/20131001/UML.xmi');
  });
});
