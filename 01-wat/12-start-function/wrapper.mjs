import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const bytes = await readFile(__dirname + "/main.wasm");

await WebAssembly.instantiate(bytes, {
  console: {
    log: () => {
      console.log("I am called by start.");
    },
  },
});
