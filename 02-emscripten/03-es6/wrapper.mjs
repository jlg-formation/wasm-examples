import { equal } from "assert";
import createModule from "./dist/add.mjs";

const instance = await createModule({});

const a = 2.3;
const b = 4.1;
const result = instance._add(a, b);
equal(a + b, result);
console.log(`${a} + ${b} = ${result}`);
