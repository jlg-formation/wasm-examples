import { equal } from "assert";
import createModule from "./dist/mylib.mjs";

const instance = await createModule({
  noInitialRun: true,
  printErr: () => {},
});

const makeMainArgs = (array) => {
  // ASSUMPTION: pointer size is 4 bytes
  const ptr = instance._malloc(array.length * 4);
  for (let i = 0; i < array.length; i++) {
    const cstr = instance.stringToNewUTF8(array[i]);
    instance.setValue(ptr + i * 4, cstr, "i32");
  }
  return { argv: ptr, argc: array.length };
};

const test1 = () => {
  const { argv, argc } = makeMainArgs(["truc", "bidule"]);
  const result = instance._main(argc, argv);
  // free
  instance._free(argv);
  console.log("result: ", result);
  equal(result, 123);
};

test1();
