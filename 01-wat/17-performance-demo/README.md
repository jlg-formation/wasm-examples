# Applications bénéficiant de WebAssembly

> **Question QCM : q17**  
> Quel type d'applications bénéficie le plus de l'utilisation de WebAssembly ?

## Concept

Cet exemple démontre un cas où WebAssembly excelle : les **calculs intensifs** comme le traitement d'image.

## Exécution

```bash
# Compiler le module WAT en WASM
make

# Exécuter la démonstration
node wrapper.mjs
```

## Ce que démontre l'exemple

- Inversion des couleurs d'une image (opération pixel par pixel)
- Comparaison de performance entre une boucle intensive en WASM vs la même en JS
- Le gain est visible sur les opérations répétitives et numériques
