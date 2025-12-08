// @ts-nocheck
const assert = require("assert");
const Module = require("./dist/add.js");

Module.onRuntimeInitialized = () => {
  const a = 2.3;
  const b = 4.1;
  console.log("Module: ", Module);
  const result = Module._add(a, b);
  assert.equal(a + b, result);
  console.log(`${a} + ${b} = ${result}`);
};
