// String handling with AssemblyScript
// Demonstrates __newString() and __getString() from the loader

import {
  greet,
  reverse,
  getLength,
  __newString,
  __getString,
} from "./build/release.js";

// Pass a JS string to AssemblyScript using __newString()
// The loader allocates memory in WASM and copies the string
const namePtr = __newString("WebAssembly");

// Call the greet function (takes and returns string pointers internally)
const greetingPtr = greet(namePtr);

// Read the returned string from WASM memory using __getString()
const greeting = __getString(greetingPtr);
console.log("Greeting:", greeting);

// Reverse a string
const helloPtr = __newString("Hello World!");
const reversedPtr = reverse(helloPtr);
const reversed = __getString(reversedPtr);
console.log("Reversed:", reversed);

// Get string length (returns i32 directly, no __getString needed)
const length = getLength(helloPtr);
console.log("Length:", length);
