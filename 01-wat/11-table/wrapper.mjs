import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const bytes = await readFile(__dirname + "/main.wasm");

const table = new WebAssembly.Table({ initial: 2, element: "anyfunc" });
const { instance } = await WebAssembly.instantiate(bytes, {
  js: {
    table,
  },
});

console.log("table.length: ", table.length);

console.log("table.get(0);: ", table.get(0)());
console.log("table.get(1);: ", table.get(1)());

// @ts-ignore
console.log("callByIndex(0);: ", instance.exports.callByIndex(0));
// @ts-ignore
console.log("callByIndex(1);: ", instance.exports.callByIndex(1));
