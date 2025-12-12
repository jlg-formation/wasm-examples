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
- Le fichier doit être en Markdown valide

### Numérotation des exemples (CRITIQUE)

Chaque dossier a sa **propre numérotation indépendante**. Les préfixes `NN-` doivent être **uniques au sein de chaque dossier**.

#### Procédure obligatoire AVANT de créer un exemple :

1. **Liste les fichiers/dossiers existants** du dossier cible avec `ls`
2. **Identifie le numéro maximum** déjà utilisé (ex: si max = 17, prochain = 18)
3. **Vérifie aussi le plan** `/remaining-examples.plan.md` pour les numéros réservés non encore créés
4. **Utilise le numéro suivant** le plus élevé entre fichiers réels et plan

#### Exemples de calcul :

```
01-wat/ contient: 01-export/, ..., 15-identifiers/, 16-sandbox/, 17-performance/
→ Prochain numéro disponible : 18

docs/ contient: 01-w3c.md, 02-bytecode.md, ..., 07-security.md
→ Prochain numéro disponible : 08
```

#### Format de numérotation :

- Dossiers d'exemples : `NN-slug/` (ex: `18-strings/`, `19-bigint/`)
- Documentation : `NN-slug.md` (ex: `08-vscode-extensions.md`)

#### Mise à jour du plan :

Quand tu crées un exemple, **mets à jour le plan** avec le numéro réellement utilisé (pas celui initialement proposé s'il a changé).

## Types de contenus à créer

Selon la nature de la question non couverte, propose le type de contenu approprié :

| Type de question                | Contenu à créer | Exemple de format (NN = prochain numéro) |
| ------------------------------- | --------------- | ---------------------------------------- |
| Concept pratique WAT            | Exemple de code | `01-wat/NN-<slug>/`                      |
| Concept pratique Emscripten     | Exemple de code | `02-emscripten/NN-<slug>/`               |
| Concept pratique AssemblyScript | Exemple de code | `04-assemblyscript/NN-<slug>/`           |
| Notion théorique/historique     | Documentation   | `docs/NN-<slug>.md`                      |
| Configuration/Installation      | Guide           | `docs/NN-<slug>.md`                      |
| Outils externes (VS Code, etc.) | Documentation   | `docs/NN-<slug>.md`                      |

⚠️ **Important** : `NN` doit être calculé dynamiquement (voir section Numérotation).

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
