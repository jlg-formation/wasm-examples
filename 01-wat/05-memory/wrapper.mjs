import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const memory = new WebAssembly.Memory({ initial: 10, maximum: 100 });

const importObject = {
  console: {
    log:
      /** @type {(offset: number, length: number) => void} */
      (offset, length) => {
        const bytes = new Uint8Array(memory.buffer, offset, length);
        const string = new TextDecoder("utf8").decode(bytes);
        console.log(string);
      },
  },
  js: {
    memory,
  },
};

// Load the WASM file and instantiate it.
const bytes = await readFile(__dirname + "/memory.wasm");
const obj = await WebAssembly.instantiate(new Uint8Array(bytes), importObject);

// @ts-ignore
obj.instance.exports.writeHello();
