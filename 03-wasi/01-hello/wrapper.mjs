import { readFile } from "node:fs/promises";
import { WASI } from "wasi";

const wasi = new WASI({ version: "preview1" });
const wasm = await WebAssembly.compile(await readFile("./hello.wasm"));
const instance = await WebAssembly.instantiate(wasm, {
  wasi_snapshot_preview1: wasi.wasiImport,
});

wasi.start(instance);
