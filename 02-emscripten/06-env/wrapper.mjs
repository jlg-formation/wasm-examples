import { equal } from "assert";
import createModule from "./dist/mylib.mjs";

const instance = await createModule({
  print: (str) => {
    console.log("stdout: ", str);
  },
  preRun: (instance) => {
    instance.ENV.FOO = "BAR";
  },
});

const test1 = () => {
  const result = instance._print_env();
  equal(result, 0);
};

test1();
