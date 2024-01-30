// The entry file of your WebAssembly module.

export function add(a: i32, b: i32): i32 {
  return a + b;
}

export const a = 1234;

export const myArray = new ArrayBuffer(24);
const myPrivateTypedArray = Int32Array.wrap(myArray);
myPrivateTypedArray[0] = 56;

export const myStr = "Hello World!";
