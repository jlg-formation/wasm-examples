# Plan d'implementation - Particle Engine Benchmark

## 1. But du projet

Construire une application web interactive qui compare visuellement et mesure en
temps reel trois moteurs de simulation de particules :

- JavaScript natif
- AssemblyScript compile en WebAssembly
- C++ compile en WebAssembly via Emscripten

Le projet vise un compromis explicite entre qualite de demonstration, coherence
technique et benchmark exploitable sur desktop Chrome/Edge.

---

## 2. Resultats attendus

A la fin du projet, l'application doit permettre :

- d'afficher une simulation de particules fluide et attractive
- de monter a au moins 100 000 particules sur la plateforme cible
- de changer d'implementation a chaud avec reinitialisation de la scene
- de choisir plusieurs modeles physiques via une combobox
- d'afficher un panneau de benchmark lisible en continu
- de rendre visibles les differences de comportement et de performance
- de reconstruire les versions JS, AssemblyScript et Emscripten via des scripts
  documentes

---

## 3. Principes d'architecture

### Separation des responsabilites

- le rendu 2D Canvas reste entierement en TypeScript
- la simulation physique est isolee derriere une interface commune
- chaque moteur calcule les nouvelles positions et vitesses
- le benchmark observe le temps de simulation, le temps de frame et le FPS
- l'UI pilote l'etat applicatif sans contenir de logique physique

### Interface commune des moteurs

Chaque moteur devra exposer une API conceptuellement identique :

- `init(count, model, seed)`
- `step(deltaTime)`
- `reset(count, model, seed)`
- `getParticlesView()`
- `dispose()`

Objectif : pouvoir remplacer un moteur sans modifier le rendu ni l'UI.

### Representation des donnees

Utiliser une representation compacte en structure-of-arrays ou tableau plat pour
limiter les allocations et faciliter le partage de memoire :

- `x[]`
- `y[]`
- `vx[]`
- `vy[]`
- `size[]`
- `color[]` ou index de palette

Pour WASM, privilegier des buffers lineaires faciles a exposer a JavaScript.

---

## 4. Structure cible

```text
travaux-pratiques/01-particules/
├── brief.md
├── PLAN.md
├── package.json
├── vite.config.ts
├── tsconfig.json
├── public/
├── src/
│   ├── main.ts
│   ├── app/
│   │   ├── state.ts
│   │   ├── controller.ts
│   │   └── config.ts
│   ├── ui/
│   │   ├── panel.ts
│   │   └── controls.ts
│   ├── rendering/
│   │   ├── canvas-renderer.ts
│   │   └── palette.ts
│   ├── benchmark/
│   │   ├── metrics.ts
│   │   └── rolling-stats.ts
│   ├── engines/
│   │   ├── engine.ts
│   │   ├── js/
│   │   ├── assemblyscript/
│   │   └── emscripten/
│   └── shared/
│       ├── particle-model.ts
│       ├── random.ts
│       └── types.ts
├── assembly/
├── cpp/
└── docs/
    └── implementation-notes.md
```

---

## 5. Decoupage en lots

### Lot 1 - Initialisation du projet

Objectif : disposer d'une base executable rapidement.

Travaux :

- initialiser un projet Vite + TypeScript
- definir l'arborescence cible
- ajouter les scripts npm principaux
- preparer le canvas plein ecran et la boucle d'animation
- ajouter une configuration centralisee pour les parametres par defaut

Critere de sortie :

- l'application affiche un canvas et une interface minimale
- `npm run dev` et `npm run build` fonctionnent

### Lot 2 - Moteur JavaScript de reference

Objectif : disposer du moteur de verite fonctionnelle avant WASM.

Travaux :

- definir la structure memoire des particules
- implementer l'initialisation deterministe avec seed
- implementer le mode `gravite + rebonds`
- ajouter au moins un second modele selectionnable
- brancher le rendu sur les donnees du moteur JS
- verifier le comportement a bas volume puis a grand volume

Critere de sortie :

- le moteur JS alimente correctement le rendu
- le changement de nombre de particules et de modele fonctionne
- la simulation peut etre stoppee et relancee

### Lot 3 - Panneau de controle et benchmark

Objectif : rendre l'application pilotable et observable.

Travaux :

- ajouter selecteur d'implementation
- ajouter selecteur de modele physique
- ajouter slider ou input pour le nombre de particules
- ajouter actions start/stop/reset
- calculer FPS, temps moyen de frame et temps moyen de simulation
- utiliser une moyenne glissante sur quelques secondes
- afficher l'etat courant de maniere lisible

Critere de sortie :

- le panneau permet de piloter toute la demo
- les mesures sont stables et comprehensibles

### Lot 4 - Portage AssemblyScript

Objectif : produire un premier moteur WASM moderne et lisible.

Travaux :

- creer le module `assembly/`
- definir des exports simples pour `init`, `step`, `reset`
- exposer un buffer de particules lisible depuis JavaScript
- gerer proprement l'allocation et le cycle de vie des donnees
- integrer le build AssemblyScript dans les scripts npm
- brancher le moteur AssemblyScript dans l'interface commune

Points d'attention :

- minimiser les copies entre JS et WASM
- surveiller les allocations frequentes
- garder un format memoire proche du moteur JS

Critere de sortie :

- le moteur AssemblyScript produit une simulation visible et stable
- l'utilisateur peut basculer dessus depuis l'UI

### Lot 5 - Portage C++ / Emscripten

Objectif : produire le second moteur WASM pour la comparaison.

Travaux :

- creer le dossier `cpp/`
- definir une API exportee equivalente au moteur AssemblyScript
- compiler avec Emscripten vers un module integrable dans Vite
- exposer les buffers de particules vers JavaScript
- ajouter les scripts de build et de nettoyage
- brancher le moteur Emscripten a l'interface commune

Points d'attention :

- choisir un mode d'integration stable avec Vite
- limiter le glue code au strict necessaire
- documenter clairement les prerequis Emscripten

Critere de sortie :

- le moteur C++ fonctionne dans l'application
- la comparaison a trois moteurs est possible

### Lot 6 - Optimisation et lisibilite comparative

Objectif : rendre les differences vraiment visibles.

Travaux :

- profiler les points chauds JS et WASM
- reduire les allocations et conversions inutiles
- ajuster les tailles de buffers et le schema memoire
- calibrer le nombre de particules par defaut
- ajuster le rendu pour garder une lecture visuelle claire
- afficher si necessaire un indicateur de charge ou de budget frame

Critere de sortie :

- les ecarts de performance sont perceptibles
- l'application reste fluide sur la cible principale

### Lot 7 - Finition, documentation, livraison

Objectif : rendre le TP exploitable pedagogiquement.

Travaux :

- rediger le README local du projet
- documenter les commandes de build JS, AS et C++
- documenter les limites observees lors des benchmarks
- ajouter une courte note expliquant l'equite relative du benchmark
- nettoyer le code et les scripts

Critere de sortie :

- un tiers peut lancer le projet sans deviner la procedure
- les arbitrages techniques sont explicitement traces

---

## 6. Ordre de priorite recommande

1. Moteur JavaScript correct et stable
2. Rendu Canvas performant
3. Benchmark et UI de pilotage
4. Portage AssemblyScript
5. Portage Emscripten
6. Optimisations comparatives
7. Documentation finale

Raison : sans reference JS stable et sans instrumentation fiable, la comparaison
WASM ne sera ni pedagogique ni credible.

---

## 7. Protocole de benchmark

Le benchmark devra distinguer au minimum :

- temps de simulation seul
- temps total de frame
- FPS moyen glissant
- nombre de particules
- moteur actif
- modele physique actif

Regles recommandees :

- reinitialiser la scene a chaque changement de moteur
- utiliser la meme seed initiale pour une comparaison donnee
- fixer les memes parametres utilisateur pendant une mesure
- executer les tests sur Chrome ou Edge desktop
- noter les conditions de machine pour les captures d'ecran ou mesures finales

Important :

Le benchmark est comparatif et pedagogique, pas un protocole scientifique
strict. Des optimisations propres a chaque moteur sont acceptees si le resultat
reste fonctionnellement comparable du point de vue utilisateur.

---

## 8. Risques techniques

### Risque 1 - Cout du passage JS/WASM

Le gain WASM peut etre annule si les donnees sont trop copiees entre les mondes.

Mitigation :

- partager des buffers quand c'est possible
- lire les particules depuis une vue memoire lineaire
- limiter les appels fins et frequents entre JS et WASM

### Risque 2 - Rendu Canvas devient le goulet d'etranglement

Le moteur physique peut devenir plus rapide que le rendu, rendant la comparaison
moins visible.

Mitigation :

- mesurer separement simulation et frame complete
- optimiser les parcours de dessin
- reduire les effets graphiques si le rendu masque les gains CPU

### Risque 3 - Divergence entre moteurs

Des implementations trop differentes rendent la comparaison confuse.

Mitigation :

- conserver les memes modeles visibles par l'utilisateur
- documenter les ecarts internes admis
- verifier des comportements globaux comparables

### Risque 4 — Complexite Emscripten dans Vite

L'integration C++ peut prendre plus de temps que prevu.

Mitigation :

- viser une interface exportee minimale
- verrouiller rapidement un pipeline de build reproductible
- ne pas complexifier le module C++ avant l'integration reussie

---

## 9. Definition de fini

Le projet sera considere comme termine lorsque :

- les trois moteurs sont selectionnables depuis l'interface
- au moins deux modeles physiques sont disponibles
- le changement de moteur reinitialise la scene
- les mesures temps reel sont lisibles et stables
- la cible `100k+` est atteinte ou documentee avec ses limites
- les scripts de build sont reproductibles
- la documentation explique installation, lancement et limites

---

## 10. Planning indicatif

### Sprint 1

- socle Vite + TypeScript
- rendu Canvas
- moteur JS
- UI minimale

### Sprint 2

- benchmark temps reel
- modeles physiques supplementaires
- stabilisation UX

### Sprint 3

- integration AssemblyScript
- comparaison JS vs AS
- premiers profils de performance

### Sprint 4

- integration Emscripten
- comparaison complete JS vs AS vs C++
- optimisation finale
- documentation

---

## 11. Livrables

- application web executable en local
- code source TypeScript, AssemblyScript et C++
- scripts npm de build et de lancement
- documentation de build et d'usage
- captures ou notes de benchmark finales
