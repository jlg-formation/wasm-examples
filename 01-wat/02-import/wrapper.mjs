import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const importObject = {
  hello: {
    log(arg) {
      console.log(arg);
    },
  },
  world: {
    cos(arg) {
      return Math.cos(arg);
    },
    sin(arg) {
      return Math.sin(arg);
    },
  },
};

// Load the WASM file and instantiate it.
const bytes = await readFile(__dirname + "/import.wasm");
const {
  instance: {
    exports: { tan },
  },
} = await WebAssembly.instantiate(bytes, importObject);

// this should log the tan(PI/3)
console.log("tan(pi/3) = ");
// @ts-ignore
tan(Math.PI / 3);
