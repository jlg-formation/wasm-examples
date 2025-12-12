---
agent: agent
---

## Role

Tu es un expert en WebAssembly (WAT, WASI), Emscripten et AssemblyScript.
Tu analyses la couverture pédagogique entre des exemples de code et un QCM.

## Contexte

Ce repository contient des exemples WebAssembly organisés par technologie :

- `01-wat/` : Exemples en WebAssembly Text Format
- `02-emscripten/` : Exemples avec Emscripten (C → Wasm)
- `03-wasi/` : Exemples WASI
- `04-assemblyscript/` : Exemples AssemblyScript

Le fichier QCM se trouve dans `qcm/qcm-wasm.yml`.

## Objectif

1. Créer un plan de couverture des questions du QCM par les exemples existants
2. Identifier les exemples manquants
3. **Réaliser les exemples manquants** si le plan existe et est valide

## Instructions

### Phase 1 : Analyse (si le plan n'existe pas)

1. Lis le fichier `qcm/qcm-wasm.yml` pour comprendre les questions
2. Examine les exemples dans les dossiers `01-wat/`, `02-emscripten/`, `03-wasi/`, `04-assemblyscript/`
3. Crée le fichier `/remaining-examples.plan.md`

### Phase 2 : Réalisation (si le plan existe)

**Paramètre : `count`** = nombre d'exemples à créer par exécution (défaut : 3)

1. Lis le fichier `/remaining-examples.plan.md`
2. Identifie les `count` premiers exemples non couverts (❌) qui n'ont pas encore été créés
3. Pour chaque exemple :
   - Crée l'exemple (code ou documentation) selon le type indiqué
   - Mets à jour le plan : change ❌ en ✅ et ajoute le chemin dans "Exemple existant"
4. Affiche un résumé des exemples créés et le nombre restant

## Format de sortie

Le fichier `/remaining-examples.plan.md` doit contenir un tableau avec ce format :

| #   | Question QCM                      | Couvert ? | Exemple existant    | Exemple à créer       |
| --- | --------------------------------- | --------- | ------------------- | --------------------- |
| 1   | Description courte de la question | ✅ / ❌   | `01-wat/05-memory/` | -                     |
| 2   | Autre question                    | ❌        | -                   | Proposition d'exemple |

## Exemple

Pour une question sur les boucles en WAT :
| # | Question QCM | Couvert ? | Exemple existant | Exemple à créer |
|---|--------------|-----------|------------------|-----------------|
| 7 | Comment créer une boucle en WAT ? | ✅ | `01-wat/07-loop/` | - |

Pour une question sans exemple :
| # | Question QCM | Couvert ? | Exemple existant | Exemple à créer |
|---|--------------|-----------|------------------|-----------------|
| 15 | Comment utiliser SIMD en Wasm ? | ❌ | - | `01-wat/16-simd/` |

## Contraintes

- Utilise les chemins relatifs depuis la racine du repo
- Une question peut être couverte par plusieurs exemples
- Propose des noms d'exemples cohérents avec la convention existante (numérotation)
- Le fichier doit être en Markdown valide

## Types de contenus à créer

Selon la nature de la question non couverte, propose le type de contenu approprié :

| Type de question                | Contenu à créer | Exemple de chemin               |
| ------------------------------- | --------------- | ------------------------------- |
| Concept pratique WAT            | Exemple de code | `01-wat/16-strings/`            |
| Concept pratique Emscripten     | Exemple de code | `02-emscripten/08-cmake/`       |
| Concept pratique AssemblyScript | Exemple de code | `04-assemblyscript/04-arrays/`  |
| Notion théorique/historique     | Documentation   | `docs/01-wasm-history.md`       |
| Configuration/Installation      | Guide           | `docs/02-emscripten-install.md` |
| Outils externes (VS Code, etc.) | Documentation   | `docs/03-vscode-extensions.md`  |

## Principes de création des exemples

### Exemples de code

Les exemples de code doivent être **minimalistes** :

- Ne montrer **que** le concept nécessaire pour répondre à la question du QCM
- Pas de fonctionnalités superflues
- Code commenté expliquant le concept clé
- Inclure un `README.md` avec :
  - La question QCM associée
  - Une explication courte du concept
  - Comment exécuter l'exemple
- Inclure un `Makefile` pour la compilation (si applicable)
- Inclure un `wrapper.mjs` pour l'exécution JavaScript (si applicable)

### Documentation

Les fichiers de documentation doivent :

- Répondre directement à la question du QCM
- Être concis (max 1-2 pages)
- Inclure des liens vers les ressources officielles
- Mentionner l'ID de la question QCM en en-tête
