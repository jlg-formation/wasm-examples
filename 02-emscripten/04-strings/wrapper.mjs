import { equal } from "assert";
import createModule from "./dist/mylib.mjs";

const instance = await createModule({});

const repeatTwice = (source, max) => {
  const sourcePtr = instance.stringToNewUTF8(source);
  const destinationPtr = instance._malloc(max);
  instance._repeatTwice(destinationPtr, max, sourcePtr);
  const destination = instance.UTF8ToString(destinationPtr, max);
  instance._free(destinationPtr);
  instance._free(sourcePtr);
  return destination;
};

const test1 = () => {
  const destination = repeatTwice("Hello", 256);
  console.log("destination: ", destination);
  equal(destination, "HelloHello");
};

const test2 = () => {
  const destination = repeatTwice("Hello", 7);
  console.log("destination: ", destination);
  equal(destination, "HelloH");
};

test1();
test2();
