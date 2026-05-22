# TP WebAssembly — Particle Engine Benchmark

## Objectif pédagogique

Développer une application web interactive et visuellement attractive permettant
de comparer les performances de plusieurs implémentations d’un moteur de
simulation de particules :

- JavaScript pur
- WebAssembly via AssemblyScript
- WebAssembly via C++ + Emscripten

L’objectif est de :

- comprendre le fonctionnement de WebAssembly
- mesurer les gains réels de performance
- identifier les limites et coûts de WASM
- comparer plusieurs toolchains
- utiliser les outils de profiling du navigateur
- produire une application moderne et fluide

---

# Résultat attendu

Une application web affichant :

- une simulation temps réel de particules
- au moins 100 000 particules sur une machine desktop standard cible
- un rendu fluide et esthétique
- un panneau de benchmark temps réel
- la possibilité de changer dynamiquement d’implémentation
- une comparaison lisible entre moteur JavaScript, moteur AssemblyScript et
  moteur C++/Emscripten

La cible principale de démonstration est :

- desktop Chrome / Edge

L’application devra permettre de comparer immédiatement :

| Implémentation | Technologie                |
| -------------- | -------------------------- |
| JS             | JavaScript natif           |
| AS             | AssemblyScript             |
| C++            | WebAssembly via Emscripten |

---

# Contraintes techniques

## Stack imposée

### Frontend

- Vite latest
- TypeScript latest
- HTML5 Canvas 2D

### WebAssembly

- AssemblyScript
- Emscripten
- C++

### Outils

- VSCode
- GitHub Copilot
- GPT-5.4 medium

---

# Fonctionnalités attendues

# 1. Simulation de particules

Chaque particule possède :

- position x/y
- vitesse vx/vy
- couleur
- taille

Le moteur doit :

- déplacer les particules
- gérer les rebonds sur les bords
- appliquer une gravité légère
- proposer plusieurs modèles physiques sélectionnables via l’interface

Exemples de modèles attendus :

- gravité + rebonds
- attraction / répulsion simple
- variante libre mais cohérente avec l’objectif de benchmark

---

# 2. Rendu graphique

Le rendu doit être :

- fluide
- coloré
- agréable visuellement

Le rendu doit rester en JavaScript.

IMPORTANT : Le calcul physique uniquement sera déplacé en WebAssembly.

---

# 3. Contrôles utilisateur

L’interface doit permettre :

- de choisir l’implémentation active
- de choisir le modèle physique actif
- de modifier le nombre de particules
- de lancer/arrêter la simulation
- de réinitialiser la scène

Lors d’un changement d’implémentation, la simulation doit être réinitialisée
afin de repartir d’un état propre.

---

# 4. Benchmark temps réel

Afficher en permanence :

- FPS
- temps moyen par frame
- nombre de particules
- implémentation active

Les mesures devront être mises à jour en temps réel.

La mesure affichée devra s’appuyer sur une moyenne glissante sur quelques
secondes afin d’éviter les variations trop bruitées.

---

# 5. Comparaison des performances

L’utilisateur doit pouvoir comparer facilement :

- JavaScript pur
- AssemblyScript
- Emscripten

L’application doit rendre les différences visibles.

Important : l’objectif est une comparaison utile pour une démo technique et
pédagogique. Les implémentations ne sont pas obligées d’être strictement
identiques en interne ; chaque moteur peut être optimisé librement, tant que le
comportement global reste comparable pour l’utilisateur.

Le compromis recherché est un équilibre entre :

- qualité visuelle de la démonstration
- crédibilité des mesures de performance

---

# Architecture attendue

## Contraintes de réalisation complémentaires

- le rendu reste intégralement en JavaScript via Canvas 2D
- seules les mises à jour physiques et calculs intensifs sont déplacés en
  WebAssembly
- les builds AssemblyScript et Emscripten doivent être reproductibles via des
  scripts du projet
- une documentation d’utilisation et de build doit être fournie

## Critères de réussite

- les différences de performances sont clairement visibles à l’usage
- l’interface est moderne et soignée
- l’application reste fluide sur la plateforme cible
- le projet permet une comparaison immédiate entre les trois moteurs

# Structure du projet

```text
project/
├── src/
│   ├── main.ts
│   ├── ui/
│   ├── rendering/
│   ├── benchmark/
│   ├── engines/
│   │   ├── js/
│   │   ├── assemblyscript/
│   │   └── emscripten/
│   └── shared/
│
├── assembly/
├── cpp/
├── public/
└── dist/
```
