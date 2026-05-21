# 28-deux-wasm - Bridge entre deux modules WebAssembly

Cet exemple montre une architecture composee de deux modules WebAssembly :

- la page HTML charge un unique script JavaScript ;
- JavaScript instancie `module2.wasm`, puis injecte son export dans
  `module1.wasm` ;
- `module1.wasm` execute la boucle principale et appelle `module2.wasm` via une
  fonction importee ;
- un benchmark compare ce chemin a une version monolithique et a une version
  JavaScript pure.

## Execution

```bash
# Compiler les modules
make build

# Verification rapide dans Node.js
make run

# Demonstration navigateur
make serve
```

Puis ouvrir http://localhost:3000/index.html.

## Ce que demontre l'exemple

- un bridge WASM1 -> WASM2 sans logique metier JavaScript dans la boucle mesuree ;
- une comparaison entre `double-wasm`, `mono-wasm` et `js-pur` ;
- un micro-benchmark visible dans la page avec moyenne, min, max et ratio.

## Limites de lecture

Le benchmark mesure un scenario local et numerique. Il ne faut pas extrapoler ce
ratio a tous les cas d'usage WebAssembly, mais il permet d'observer le surcout
relatif du bridge dans une situation simple et reproductible.