import { SaxesParser } from 'saxes';
import type { SaxesTag } from 'saxes';

export interface XmiNode extends SaxesTag {
  line: number;
  column: number;
}

type NodeCallback = (node: XmiNode) => void;

export class XmiParser {
  private parser: SaxesParser;
  private listeners: Record<string, NodeCallback[]> = {};

  constructor() {
    this.parser = new SaxesParser();
    
    this.parser.on('opentag', (node: SaxesTag) => {
      const xmiNode: XmiNode = {
        ...node,
        line: this.parser.line,
        column: this.parser.column,
      };
      
      this.trigger('opentag', xmiNode);
      this.trigger(node.name, xmiNode);
    });

    this.parser.on('closetag', (node) => {
      const xmiNode = {
        name: node.name,
        attributes: {},
        isSelfClosing: node.isSelfClosing,
        line: this.parser.line,
        column: this.parser.column
      } as unknown as XmiNode;
      this.trigger('closetag', xmiNode);
    });

    this.parser.on('error', (err) => {
      this.errors.push(err.message);
    });
  }

  public errors: string[] = [];

  public on(event: string, callback: NodeCallback): void {
    if (!this.listeners[event]) {
      this.listeners[event] = [];
    }
    this.listeners[event].push(callback);
  }

  private trigger(event: string, node: XmiNode): void {
    if (this.listeners[event]) {
      for (const cb of this.listeners[event]) {
        cb(node);
      }
    }
  }

  public parseRaw(chunk: string): void {
    this.parser.write(chunk);
  }

  public close(): void {
    this.parser.close();
  }

  public parse(xml: string): void {
    this.parser.write(xml).close();
  }
}
