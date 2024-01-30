import { a, myArray } from "../build/debug.js";

console.log("a: ", a.value);
const myTypedArray = new Uint32Array(myArray.value);
console.log("myTypedArray[0]: ", myTypedArray[0]);
