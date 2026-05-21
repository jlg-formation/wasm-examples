const CONFIG = {
  iterations: 3_000_000,
  seed: 12_345,
  repeats: 7,
  warmupRuns: 2,
};

function jsTransform(value, seed) {
  return ((value * 1664525 + seed + 1013904223) & 0x7fffffff) | 0;
}

function runJs(iterations, seed) {
  let acc = seed | 0;
  for (let index = 0; index < iterations; index += 1) {
    acc = (jsTransform(acc, seed) ^ index) | 0;
  }
  return acc | 0;
}

function formatMs(value) {
  return `${value.toFixed(3)} ms`;
}

function mean(values) {
  return values.reduce((sum, value) => sum + value, 0) / values.length;
}

function min(values) {
  return Math.min(...values);
}

function max(values) {
  return Math.max(...values);
}

function measure(fn, repeats) {
  const samples = [];
  let result = null;

  for (let index = 0; index < repeats; index += 1) {
    const start = performance.now();
    result = fn();
    samples.push(performance.now() - start);
  }

  return {
    result,
    mean: mean(samples),
    min: min(samples),
    max: max(samples),
    samples,
  };
}

async function loadBytes(path) {
  if (typeof window === "undefined") {
    const { readFile } = await import("node:fs/promises");
    return readFile(new URL(path, import.meta.url));
  }

  const response = await fetch(path);
  if (!response.ok) {
    throw new Error(`Failed to load ${path}: ${response.status}`);
  }
  return response.arrayBuffer();
}

async function instantiateModule(path, imports = {}) {
  const bytes = await loadBytes(path);
  const { instance } = await WebAssembly.instantiate(bytes, imports);
  return instance;
}

async function setup() {
  const module2 = await instantiateModule("./module2.wasm");
  const module1 = await instantiateModule("./module1.wasm", {
    bridge: {
      transform: module2.exports.transform,
    },
  });
  const mono = await instantiateModule("./mono.wasm");

  return {
    module1,
    module2,
    mono,
  };
}

function benchmarkScenarios({ module1, mono }, config = CONFIG) {
  const doubleWasm = () => module1.exports.run(config.iterations, config.seed);
  const monoWasm = () => mono.exports.run(config.iterations, config.seed);
  const jsPure = () => runJs(config.iterations, config.seed);

  for (let index = 0; index < config.warmupRuns; index += 1) {
    doubleWasm();
    monoWasm();
    jsPure();
  }

  const scenarios = [
    { key: "double-wasm", label: "JS -> WASM1 -> WASM2", run: doubleWasm },
    { key: "mono-wasm", label: "JS -> WASM monolithique", run: monoWasm },
    { key: "js-pur", label: "JS pur", run: jsPure },
  ];

  const metrics = scenarios.map((scenario) => ({
    ...scenario,
    ...measure(scenario.run, config.repeats),
  }));

  const expected = metrics[0].result;
  for (const metric of metrics) {
    if (metric.result !== expected) {
      throw new Error(
        `Result mismatch for ${metric.key}: ${metric.result} !== ${expected}`,
      );
    }
  }

  const monoMetric = metrics.find((metric) => metric.key === "mono-wasm");
  return metrics.map((metric) => ({
    ...metric,
    ratio: metric.mean / monoMetric.mean,
  }));
}

function buildConclusion(metrics) {
  const doubleMetric = metrics.find((metric) => metric.key === "double-wasm");
  const monoMetric = metrics.find((metric) => metric.key === "mono-wasm");
  const jsMetric = metrics.find((metric) => metric.key === "js-pur");
  const bridgeOverhead = (doubleMetric.mean / monoMetric.mean - 1) * 100;
  const wasmVsJs = jsMetric.mean / doubleMetric.mean;

  return [
    `Sur ce micro-benchmark, la composition a deux modules ajoute ${bridgeOverhead.toFixed(1)}% de surcout relatif par rapport au module monolithique.`,
    `Elle reste ${wasmVsJs.toFixed(2)}x plus rapide que la version JavaScript pure sur cette charge de calcul.`,
  ].join(" ");
}

function renderTable(metrics, config) {
  const rows = metrics
    .map(
      (metric) => `
        <tr>
          <td data-label="Scenario">${metric.key}</td>
          <td data-label="Chemin mesure">${metric.label}</td>
          <td data-label="Resultat">${metric.result}</td>
          <td data-label="Iterations">${config.iterations.toLocaleString("fr-FR")}</td>
          <td data-label="Moyenne">${formatMs(metric.mean)}</td>
          <td data-label="Min">${formatMs(metric.min)}</td>
          <td data-label="Max">${formatMs(metric.max)}</td>
          <td data-label="Ratio vs mono">${metric.ratio.toFixed(3)}x</td>
        </tr>`,
    )
    .join("");

  return `
    <table>
      <thead>
        <tr>
          <th>Scenario</th>
          <th>Chemin mesure</th>
          <th>Resultat</th>
          <th>Iterations</th>
          <th>Moyenne</th>
          <th>Min</th>
          <th>Max</th>
          <th>Ratio vs mono</th>
        </tr>
      </thead>
      <tbody>${rows}
      </tbody>
    </table>`;
}

function renderBrowser(result, config) {
  const status = document.getElementById("status");
  const summary = document.getElementById("summary");
  const results = document.getElementById("results");
  const notes = document.getElementById("notes");

  status.textContent = "Benchmark termine";
  summary.textContent = buildConclusion(result.metrics);
  results.innerHTML = renderTable(result.metrics, config);
  notes.innerHTML = `
    <li>Warmup: ${config.warmupRuns} passage(s) hors mesure</li>
    <li>Repetitions mesurees: ${config.repeats}</li>
    <li>Bridge mesure: WASM1 importe la fonction exportee par WASM2</li>`;
}

function renderConsole(result, config) {
  console.log("=== Deux modules WebAssembly ===\n");
  console.log(`Iterations: ${config.iterations.toLocaleString("fr-FR")}`);
  console.log(`Warmup: ${config.warmupRuns}`);
  console.log(`Repetitions: ${config.repeats}\n`);

  for (const metric of result.metrics) {
    console.log(`${metric.key}`);
    console.log(`  Path: ${metric.label}`);
    console.log(`  Result: ${metric.result}`);
    console.log(`  Mean: ${formatMs(metric.mean)}`);
    console.log(`  Min: ${formatMs(metric.min)}`);
    console.log(`  Max: ${formatMs(metric.max)}`);
    console.log(`  Ratio vs mono: ${metric.ratio.toFixed(3)}x\n`);
  }

  console.log(buildConclusion(result.metrics));
}

async function run(config = CONFIG) {
  const modules = await setup();
  const metrics = benchmarkScenarios(modules, config);
  return {
    metrics,
  };
}

if (typeof window === "undefined") {
  const result = await run();
  renderConsole(result, CONFIG);
} else {
  const status = document.getElementById("status");
  try {
    status.textContent = "Chargement des modules et execution du benchmark...";
    const result = await run();
    renderBrowser(result, CONFIG);
  } catch (error) {
    status.textContent = "Echec du chargement";
    document.getElementById("summary").textContent = error.message;
    document.getElementById("results").innerHTML = "";
    document.getElementById("notes").innerHTML =
      "<li>Verifiez make build puis make serve.</li>";
    throw error;
  }
}

export { run, CONFIG };
