/**
 * Wrapper pour démontrer les ports Emscripten
 * Question QCM: em_q19 - Bibliothèques tierces
 */

import { createRequire } from "module";

const require = createRequire(import.meta.url);
const Module = require("./dist/ports.js");

await new Promise((resolve) => {
  Module.onRuntimeInitialized = resolve;
});

console.log("=== Emscripten Ports: Exemple zlib ===\n");

// Récupérer la version de zlib
const getZlibVersion = Module.cwrap("get_zlib_version", "string", []);
const compressData = Module.cwrap("compress_data", "number", ["string"]);
const decompressData = Module.cwrap("decompress_data", "string", []);
const calculateCrc32 = Module.cwrap("calculate_crc32", "number", ["string"]);

// 1. Version de zlib
console.log("1. Version de zlib");
console.log("-".repeat(40));
console.log(`   zlib version: ${getZlibVersion()}`);

// 2. Compression/Décompression
console.log("\n2. Compression et décompression");
console.log("-".repeat(40));
const testData =
  "Hello, WebAssembly with zlib! This text will be compressed and then decompressed.";
console.log(`   Texte original (${testData.length} chars):`);
console.log(`   "${testData.substring(0, 50)}..."`);

const compressedSize = compressData(testData);
console.log(`   Taille compressée: ${compressedSize} octets`);

const decompressed = decompressData();
console.log(`   Décompressé: "${decompressed.substring(0, 50)}..."`);

// Vérification
const match = decompressed === testData;
console.log(`   Intégrité: ${match ? "✓ OK" : "✗ Erreur"}`);

// 3. CRC32
console.log("\n3. Calcul CRC32 (autre fonction zlib)");
console.log("-".repeat(40));
const crc = calculateCrc32(testData);
console.log(`   CRC32 du texte: 0x${crc.toString(16).toUpperCase()}`);

// 4. Liste des ports populaires
console.log("\n4. Ports Emscripten populaires");
console.log("-".repeat(40));
console.log("   -sUSE_ZLIB=1     → zlib (compression)");
console.log("   -sUSE_SDL=2      → SDL2 (graphiques)");
console.log("   -sUSE_LIBPNG=1   → libpng (images PNG)");
console.log("   -sUSE_FREETYPE=1 → FreeType (polices)");

console.log("\n💡 Astuce: emcc --show-ports liste tous les ports");
