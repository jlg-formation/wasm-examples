import { a, b, myArray, myStr } from "../build/debug.js";

console.log("myStr: ", myStr.value);
console.log("a: ", a.value);
console.log("b: ", b.value);
const myTypedArray = new Uint32Array(myArray.value);
console.log("myTypedArray[0]: ", myTypedArray[0]);
