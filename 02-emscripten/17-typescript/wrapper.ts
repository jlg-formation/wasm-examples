type ValueType = "i32";

interface Point {
  x: number;
  y: number;
}

import createModule from "./dist/bindings.js";
import type { MainModule } from "./dist/bindings.js";

type EmscriptenInstance = MainModule & {
  cwrap(
    name: string,
    returnType: string | null,
    argTypes: string[],
  ): (...args: Array<number>) => number;
  getValue(pointer: number, type: ValueType): number;
  setValue(pointer: number, value: number, type: ValueType): void;
};

function writePoint(
  module: EmscriptenInstance,
  pointer: number,
  point: Point,
): void {
  module.setValue(pointer, point.x, "i32");
  module.setValue(pointer + 4, point.y, "i32");
}

function readPoint(module: EmscriptenInstance, pointer: number): Point {
  return {
    x: module.getValue(pointer, "i32"),
    y: module.getValue(pointer + 4, "i32"),
  };
}

function describePair(
  module: EmscriptenInstance,
  left: string,
  right: string,
): string {
  const describePairPointer = module.cwrap("describe_pair", "number", [
    "number",
    "number",
  ]);
  const leftPointer = module.stringToNewUTF8(left);
  const rightPointer = module.stringToNewUTF8(right);

  try {
    const resultPointer = describePairPointer(leftPointer, rightPointer);
    if (resultPointer === 0) {
      throw new Error("describe_pair a retourne un pointeur nul");
    }

    const result = module.UTF8ToString(resultPointer);
    module._free(resultPointer);
    return result;
  } finally {
    module._free(leftPointer);
    module._free(rightPointer);
  }
}

function translatePoint(
  module: EmscriptenInstance,
  point: Point,
  dx: number,
  dy: number,
): Point {
  const translatePointPointer = module.cwrap("translate_point_ptr", null, [
    "number",
    "number",
    "number",
    "number",
  ]);
  const inputPointer = module._malloc(8);
  const outputPointer = module._malloc(8);

  try {
    writePoint(module, inputPointer, point);
    translatePointPointer(inputPointer, dx, dy, outputPointer);
    return readPoint(module, outputPointer);
  } finally {
    module._free(inputPointer);
    module._free(outputPointer);
  }
}

function assertEqual<T>(actual: T, expected: T, message: string): void {
  if (actual !== expected) {
    throw new Error(
      `${message}: expected ${String(expected)}, got ${String(actual)}`,
    );
  }
}

function assertPoint(actual: Point, expected: Point, message: string): void {
  assertEqual(actual.x, expected.x, `${message} (x)`);
  assertEqual(actual.y, expected.y, `${message} (y)`);
}

const moduleInstance = (await createModule({})) as EmscriptenInstance;

console.log("=== Emscripten + TypeScript ===\n");

const addInts = moduleInstance.cwrap("add_ints", "number", [
  "number",
  "number",
]);
const average3 = moduleInstance.cwrap("average3", "number", [
  "number",
  "number",
  "number",
]);

const sum = addInts(12, 30);
assertEqual(sum, 42, "add_ints");
console.log(`1. add_ints(12, 30) = ${sum}`);

const average = average3(3.0, 4.5, 6.0);
assertEqual(average, 4.5, "average3");
console.log(`2. average3(3.0, 4.5, 6.0) = ${average}`);

const pairDescription = describePair(moduleInstance, "bonjour", "wasm");
assertEqual(
  pairDescription,
  "left=bonjour | right=wasm | total=11",
  "describe_pair",
);
console.log(`3. describe_pair(...) = ${pairDescription}`);

const inputPoint: Point = { x: 5, y: -2 };
const movedPoint = translatePoint(moduleInstance, inputPoint, 3, 10);
assertPoint(movedPoint, { x: 8, y: 8 }, "translate_point_ptr");
console.log(
  `4. translate_point_ptr({ x: 5, y: -2 }, 3, 10) = (${movedPoint.x}, ${movedPoint.y})`,
);

console.log("\nToutes les vérifications sont passées.");
