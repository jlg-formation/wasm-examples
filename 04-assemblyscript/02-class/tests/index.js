import { module, memory } from "../build/debug.js";

console.log("memory.buffer: ", memory.buffer.byteLength);

for (let i = 0; i < 1e7; i++) {
  module(3, 4);
}

console.log("memory.buffer: ", memory.buffer.byteLength);

console.log(`module(3, 4) = ${module(3, 4)}`);
