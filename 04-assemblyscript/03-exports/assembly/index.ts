export const a = 1234;

export let b = 6789;

export const myArray = new ArrayBuffer(24);
const myPrivateTypedArray = Int32Array.wrap(myArray);
myPrivateTypedArray[0] = 56;

export const myStr = "Hello World!";
