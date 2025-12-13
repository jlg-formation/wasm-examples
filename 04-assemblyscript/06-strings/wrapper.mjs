// String handling with AssemblyScript
// The generated bindings handle string conversion automatically

import { greet, reverse, getLength } from "./build/release.js";

// With modern AssemblyScript, string conversion is handled automatically
// by the generated bindings - no need for __newString() or __getString()

// Call greet with a regular JavaScript string
const greeting = greet("WebAssembly");
console.log("Greeting:", greeting);

// Reverse a string
const reversed = reverse("Hello World!");
console.log("Reversed:", reversed);

// Get string length
const length = getLength("Hello World!");
console.log("Length:", length);
