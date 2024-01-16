import { equal } from "assert";
import createModule from "./dist/mylib.mjs";

const instance = await createModule({
  print: (str) => {
    console.log("stdout: ", str);
  },
});

const test1 = () => {
  const result = instance._print_env();
  equal(result, 0);
};

test1();
