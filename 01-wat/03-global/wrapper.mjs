import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Load the WASM file and instantiate it.
const bytes = await readFile(__dirname + "/global.wasm");
const obj = await WebAssembly.instantiate(new Uint8Array(bytes));

// @ts-ignore
const pi = obj.instance.exports.pi.value;
console.log("pi: ", pi);
