import { equal } from "assert";
import createModule from "./dist/mylib.mjs";

const instance = await createModule({
  noInitialRun: true,
  printErr: () => {},
});

const test1 = () => {
  const result = instance._main();
  console.log("result: ", result);
  equal(result, 123);
};

test1();
