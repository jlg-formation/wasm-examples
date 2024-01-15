import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Load the WASM file and instantiate it.
const bytes = await readFile(__dirname + "/memory.wasm");
const obj = await WebAssembly.instantiate(bytes);

// @ts-ignore
const fib5 = obj.instance.exports.fibonacciGetAfter(5);
console.log("fib5: ", fib5);
