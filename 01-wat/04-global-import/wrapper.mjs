import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const global = new WebAssembly.Global(
  { value: "f64", mutable: false },
  3.14159265358979323846
);

const importObject = {
  console: {
    log(arg) {
      console.log("wasm: " + arg);
    },
  },
  js: {
    global,
  },
};

// Load the WASM file and instantiate it.
const bytes = await readFile(__dirname + "/global-import.wasm");
const obj = await WebAssembly.instantiate(new Uint8Array(bytes), importObject);

console.log("retrieving the global constant PI from the JS World.");
// @ts-ignore
obj.instance.exports.showPi();
