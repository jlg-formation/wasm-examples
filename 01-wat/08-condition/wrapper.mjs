import assert from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const bytes = await readFile(__dirname + "/main.wasm");
const {
  instance: {
    exports: { getSign },
  },
} = await WebAssembly.instantiate(bytes);

const test1 = () => {
  // @ts-ignore
  const result = getSign(-3);
  console.log("getSign(-3): ", result);
  assert.equal(result, -1);
};
const test2 = () => {
  // @ts-ignore
  const result = getSign(0);
  console.log("getSign(0): ", result);
  assert.equal(result, 0);
};
const test3 = () => {
  // @ts-ignore
  const result = getSign(4);
  console.log("getSign(4): ", result);
  assert.equal(result, 1);
};

test1();
test2();
test3();
