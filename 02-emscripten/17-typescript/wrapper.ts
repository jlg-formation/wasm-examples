import createModule from "./dist/bindings.js";
import type { MainModule, Point } from "./dist/bindings.js";

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

const moduleInstance: MainModule = await createModule({});

console.log("=== Emscripten + TypeScript ===\n");

const sum = moduleInstance.addInts(12, 30);
assertEqual(sum, 42, "addInts");
console.log(`1. addInts(12, 30) = ${sum}`);

const average = moduleInstance.average3(3.0, 4.5, 6.0);
assertEqual(average, 4.5, "average3");
console.log(`2. average3(3.0, 4.5, 6.0) = ${average}`);

const pairDescription = moduleInstance.describePair("bonjour", "wasm");
assertEqual(
  pairDescription,
  "left=bonjour | right=wasm | total=11",
  "describePair",
);
console.log(`3. describePair(...) = ${pairDescription}`);

const inputPoint: Point = { x: 5, y: -2 };
const movedPoint = moduleInstance.translatePoint(inputPoint, 3, 10);
assertPoint(movedPoint, { x: 8, y: 8 }, "translatePoint");
console.log(
  `4. translatePoint({ x: 5, y: -2 }, 3, 10) = (${movedPoint.x}, ${movedPoint.y})`,
);

console.log("\nToutes les vérifications sont passées.");
