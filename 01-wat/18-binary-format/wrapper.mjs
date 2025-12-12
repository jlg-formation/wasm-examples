/**
 * 18-binary-format - Analyse de la structure binaire WASM
 *
 * Ce script examine les 8 premiers octets d'un fichier .wasm
 * pour identifier le magic number et la version.
 */

import { equal } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Charger le fichier WASM en tant que buffer binaire
const wasmBuffer = await readFile(__dirname + "/binary.wasm");

// Les 8 premiers octets contiennent l'en-tête WASM
const header = wasmBuffer.subarray(0, 8);

// Magic number: 0x00 0x61 0x73 0x6D = "\0asm"
const magicNumber = header.subarray(0, 4);
const magicHex = Buffer.from(magicNumber).toString("hex");
console.log(`Magic Number: ${magicHex} (corresponds to "\\0asm")`);

// Vérifier que le magic number est correct
equal(magicHex, "0061736d", "Invalid magic number");

// Version: 0x01 0x00 0x00 0x00 = version 1 (little-endian)
const version = header.subarray(4, 8);
const versionHex = Buffer.from(version).toString("hex");
console.log(`Version: ${versionHex} (version 1)`);

// Vérifier la version
equal(versionHex, "01000000", "Invalid version");

// Valider que le module est bien un module WebAssembly valide
const isValid = WebAssembly.validate(wasmBuffer);
console.log(`Module is ${isValid ? "valid" : "invalid"} WebAssembly!`);
equal(isValid, true, "Module should be valid");

// Instancier le module pour prouver qu'il fonctionne
const { instance } = await WebAssembly.instantiate(wasmBuffer);
instance.exports.noop();
console.log("Module instantiated and executed successfully!");
