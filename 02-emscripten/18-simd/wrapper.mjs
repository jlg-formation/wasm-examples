import createScalarModule from "./dist/scalar.mjs";
import createSimdModule from "./dist/simd.mjs";

const repetitions = 2500;
const samples = 6;

function formatMs(value) {
  return `${value.toFixed(2)} ms`;
}

function summarize(times) {
  const total = times.reduce((sum, value) => sum + value, 0);

  return {
    average: total / times.length,
    min: Math.min(...times),
    max: Math.max(...times),
  };
}

function measureModule(module, label) {
  module._init_vectors();
  module._reset_output();
  module._run_kernel(50);

  const times = [];
  let checksum = 0;

  for (let index = 0; index < samples; index += 1) {
    module._reset_output();
    const start = performance.now();
    module._run_kernel(repetitions);
    const elapsed = performance.now() - start;
    checksum = module._checksum();
    times.push(elapsed);
  }

  return {
    label,
    vectorLength: module._vector_length(),
    checksum,
    stats: summarize(times),
  };
}

const [scalarModule, simdModule] = await Promise.all([
  createScalarModule(),
  createSimdModule(),
]);

const scalar = measureModule(scalarModule, "scalaire");
const simd = measureModule(simdModule, "simd");
const delta = Math.abs(scalar.checksum - simd.checksum);
const ratio = scalar.stats.average / simd.stats.average;

console.log("=== Emscripten SIMD automatique ===\n");
console.log(`Taille du vecteur: ${scalar.vectorLength}`);
console.log(`Repetitions du noyau: ${repetitions}`);
console.log("");
console.log(
  "| Variante  | Checksum      | Moyenne   | Min       | Max       |",
);
console.log(
  "|-----------|---------------|-----------|-----------|-----------|",
);
console.log(
  `| scalaire  | ${scalar.checksum.toFixed(2).padEnd(13)} | ${formatMs(
    scalar.stats.average,
  ).padEnd(9)} | ${formatMs(scalar.stats.min).padEnd(9)} | ${formatMs(
    scalar.stats.max,
  ).padEnd(9)} |`,
);
console.log(
  `| simd      | ${simd.checksum.toFixed(2).padEnd(13)} | ${formatMs(
    simd.stats.average,
  ).padEnd(9)} | ${formatMs(simd.stats.min).padEnd(9)} | ${formatMs(
    simd.stats.max,
  ).padEnd(9)} |`,
);

console.log("");
console.log(`Ecart de checksum: ${delta.toExponential(2)}`);
console.log(`Acceleration moyenne scalaire/simd: ${ratio.toFixed(2)}x`);

if (delta > 0.001) {
  console.error(
    "La version SIMD ne produit pas le meme resultat que la version scalaire.",
  );
  process.exitCode = 1;
}
