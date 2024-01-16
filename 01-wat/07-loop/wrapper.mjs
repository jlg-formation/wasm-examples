import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Load the WASM file and instantiate it.
const bytes = await readFile(__dirname + "/main.wasm");
const obj = await WebAssembly.instantiate(bytes, {
  console: { log: console.log },
});

// @ts-ignore
obj.instance.exports.loop(5, 13);
