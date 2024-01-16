import assert from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const bytes = await readFile(__dirname + "/main.wasm");
const {
  instance: {
    exports: { factorial },
  },
} = await WebAssembly.instantiate(bytes);

const test1 = () => {
  // @ts-ignore
  const result = factorial(5);
  console.log("factorial(5): ", result);
  assert.equal(result, 5 * 4 * 3 * 2 * 1);
};

test1();
