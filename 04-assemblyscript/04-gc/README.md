# 04-gc - Garbage Collector AssemblyScript

> **Questions QCM associées:** as_q3 (Garbage collector), as_q15 (\_\_release)

## Concept

AssemblyScript utilise un **garbage collector** (GC) automatique pour gérer la mémoire des objets alloués (classes, tableaux, chaînes).

## Fonctions de gestion mémoire

| Fonction    | Description                          |
| ----------- | ------------------------------------ |
| `__new`     | Alloue un nouvel objet (interne)     |
| `__pin`     | Empêche l'objet d'être collecté      |
| `__unpin`   | Permet à l'objet d'être collecté     |
| `__collect` | Force un cycle de garbage collection |

## Modes de GC

Dans `asconfig.json`, vous pouvez configurer le runtime :

```json
{
  "options": {
    "runtime": "incremental" // ou "minimal", "stub"
  }
}
```

| Runtime       | GC         | Usage                      |
| ------------- | ---------- | -------------------------- |
| `incremental` | ✅ Oui     | Production (par défaut)    |
| `minimal`     | ⚠️ Basique | Petits modules             |
| `stub`        | ❌ Non     | Pas d'allocation dynamique |

## Exécution

```bash
npm install
npm run asbuild
npm run start
# Ouvrir http://localhost:3000
```

## Références

- [AssemblyScript Runtime](https://www.assemblyscript.org/runtime.html)
- [Memory Management](https://www.assemblyscript.org/memory.html)
