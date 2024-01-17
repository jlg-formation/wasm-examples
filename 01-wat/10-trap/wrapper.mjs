import assert from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const bytes = await readFile(__dirname + "/main.wasm");
const {
  instance: {
    exports: { div },
  },
} = await WebAssembly.instantiate(bytes);

const divide = (/** @type {number} */ a, /** @type {number} */ b) => {
  // @ts-ignore
  const result = div(a, b);
  console.log(`div(${a}, ${b})=${result}`);
};

let shouldBeInError = false;
try {
  divide(6, 2);
  divide(5, 2);
  divide(5, 0); // should throw an error here
  divide(5, 1);
} catch (err) {
  shouldBeInError = true;
}

assert.equal(shouldBeInError, true);
console.log("success!");
