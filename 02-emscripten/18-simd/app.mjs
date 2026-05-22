import createScalarModule from "./dist/scalar.mjs";
import createSimdModule from "./dist/simd.mjs";

const repetitions = 2500;
const samples = 6;

function summarize(times) {
  const total = times.reduce((sum, value) => sum + value, 0);

  return {
    average: total / times.length,
    min: Math.min(...times),
    max: Math.max(...times),
  };
}

function measureModule(module) {
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
    checksum,
    vectorLength: module._vector_length(),
    stats: summarize(times),
  };
}

function renderTable(results) {
  const tableBody = document.querySelector("[data-results]");

  if (!tableBody) {
    return;
  }

  tableBody.innerHTML = results
    .map(
      (entry) => `
        <tr>
          <td>${entry.label}</td>
          <td>${entry.checksum.toFixed(2)}</td>
          <td>${entry.stats.average.toFixed(2)} ms</td>
          <td>${entry.stats.min.toFixed(2)} ms</td>
          <td>${entry.stats.max.toFixed(2)} ms</td>
        </tr>`,
    )
    .join("");
}

async function main() {
  const status = document.querySelector("[data-status]");
  const summary = document.querySelector("[data-summary]");
  const runButton = document.querySelector("[data-run]");

  if (runButton) {
    runButton.disabled = true;
  }

  if (status) {
    status.textContent = "Chargement des modules Emscripten...";
  }

  const [scalarModule, simdModule] = await Promise.all([
    createScalarModule(),
    createSimdModule(),
  ]);

  const scalar = measureModule(scalarModule);
  const simd = measureModule(simdModule);
  const delta = Math.abs(scalar.checksum - simd.checksum);
  const speedup = scalar.stats.average / simd.stats.average;

  renderTable([
    { label: "scalaire", ...scalar },
    { label: "simd", ...simd },
  ]);

  if (status) {
    status.textContent = `Execution terminee sur ${scalar.vectorLength} flottants.`;
  }

  if (summary) {
    summary.textContent =
      `Les deux variantes produisent le meme checksum (ecart ${delta.toExponential(
        2,
      )}). ` +
      `Dans ce micro-benchmark, la version SIMD est ${speedup.toFixed(2)}x plus rapide.`;
  }

  if (runButton) {
    runButton.disabled = false;
    runButton.addEventListener(
      "click",
      () => {
        main().catch((error) => {
          if (status) {
            status.textContent = `Erreur: ${error.message}`;
          }
        });
      },
      { once: true },
    );
  }
}

main().catch((error) => {
  const status = document.querySelector("[data-status]");

  if (status) {
    status.textContent = `Erreur: ${error.message}`;
  }
});
