# Sécurité Sandbox WebAssembly

> **Question QCM : q6**  
> Comment la sécurité est-elle assurée dans l'exécution d'un module WebAssembly ?

## Concept

Ce module démontre que WebAssembly s'exécute dans un **environnement sandboxé** avec un accès mémoire contrôlé.

## Principe de la sandbox

WebAssembly garantit la sécurité par :

1. **Mémoire linéaire bornée** : Le module ne peut accéder qu'à sa propre mémoire
2. **Pas d'accès direct au système** : Pas de syscalls, pas d'I/O sans imports explicites
3. **Validation du bytecode** : Chaque module est validé avant exécution
4. **Imports explicites** : Toute fonctionnalité externe doit être fournie par l'hôte

## Exécution

```bash
# Compiler le module WAT en WASM
make

# Exécuter l'exemple
node wrapper.mjs
```

## Ce que démontre l'exemple

- Le module ne peut accéder qu'aux 64 Ko de sa mémoire (1 page)
- Toute tentative d'accès hors limites provoque une **trap** (erreur)
- Les fonctions importées sont le seul moyen de communiquer avec l'extérieur
