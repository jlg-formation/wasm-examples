import { equal, notEqual } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Load the WASM file and instantiate it.
const bytes = await readFile(__dirname + "/add.wasm");
const obj = await WebAssembly.instantiate(bytes);

const { integerAdd, floatAdd } = obj.instance.exports;

const test1 = () => {
  const a = 12;
  const b = 8;

  // @ts-ignore
  const result = integerAdd(a, b);
  console.log(`${a} + ${b} = ${result}`);
  equal(result, a + b);
};

const test2 = () => {
  const a = 12.7;
  const b = 8.5;
  // @ts-ignore
  const result = integerAdd(a, b);
  console.log(`${a} + ${b} = ${result}`);
  notEqual(result, a + b);
};

const test3 = () => {
  const a = 1.3;
  const b = 2.5;
  // @ts-ignore
  const result = floatAdd(a, b);
  console.log(`${a} + ${b} = ${result}`);
  equal(result, a + b);
};

test1();
test2();
test3();
