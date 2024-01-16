import { equal } from "assert";
import createModule from "./dist/mylib.mjs";

const instance = await createModule({
  print: (str) => {
    console.log("stdout: ", str);
  },
});

const FILENAME = "toto.txt";
instance.FS.writeFile(
  FILENAME,
  `Voila
le
contenu`
);

const test1 = () => {
  const max = 256;
  const bufferPtr = instance._malloc(max);
  const filenamePtr = instance.stringToNewUTF8(FILENAME);
  instance._load_file(bufferPtr, max, filenamePtr);
  const buffer = instance.UTF8ToString(bufferPtr, max);
  console.log("buffer: ", buffer);
  instance._free(bufferPtr);
  instance._free(filenamePtr);
};

test1();
