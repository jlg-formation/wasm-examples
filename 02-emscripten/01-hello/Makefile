build: hello.c
	gcc hello.c -o hello.exe

build_wasm: hello.c
	emcc hello.c -o hello.js

clean:
	rm -rf hello.exe hello.js hello.wasm

