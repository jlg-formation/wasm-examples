# Plan d'implementation

## Objectif

Construire un exemple navigateur qui montre une composition de deux modules
WebAssembly :

- une page HTML charge un unique fichier JavaScript ;
- ce JavaScript instancie deux modules WASM ;
- le module WASM 1 expose l'API principale ;
- le module WASM 1 delegue une partie du calcul au module WASM 2 ;
- un benchmark visible dans la page compare cette architecture a deux references
  equivalentes.

## Hypothese technique retenue

Le bridge le plus leger et le plus realiste pour cet exemple est :

- WASM 2 exporte une ou plusieurs fonctions de calcul pur ;
- JavaScript instancie d'abord WASM 2 ;
- JavaScript passe les exports necessaires de WASM 2 dans les imports de WASM 1
  ;
- WASM 1 appelle ensuite WASM 2 via une fonction importee, sans repasser par la
  logique metier JavaScript a chaque invocation.

Cette approche respecte le besoin de demonstration : JavaScript sert de glue
d'instanciation, mais le chemin de calcul mesure reste un appel WASM1 -> import
de fonction -> WASM2.

## Fichiers a produire

- `index.html` : page de demonstration avec zone de resultat et tableau de
  benchmark.
- `app.mjs` ou `wrapper.mjs` : initialisation, chargement des modules, execution
  des scenarii et rendu du tableau.
- `module1.wat` : module principal expose a JavaScript.
- `module2.wat` : module de calcul pur utilise par `module1.wat`.
- `mono.wat` : version monolithique de reference pour le benchmark.
- `Makefile` : compilation WAT -> WASM et commande de service HTTP local.
- `README.md` : mode d'execution et explication concise du benchmark.

## Decoupage fonctionnel

### 1. Definir le calcul de reference

Choisir un calcul :

- purement numerique ;
- simple a implementer en WAT ;
- suffisamment repetitif pour rendre le cout d'appel observable ;
- strictement equivalent entre les trois versions benchmarkees.

Option recommandee :

- WASM 2 expose une primitive courte, par exemple une etape de transformation
  arithmetique ;
- WASM 1 boucle un grand nombre de fois et appelle cette primitive ;
- la version monolithique embarque exactement la meme primitive en interne ;
- la version JavaScript reproduit le meme traitement avec la meme charge.

### 2. Construire la chaine de chargement navigateur

- Ajouter `index.html` avec un bouton ou un lancement automatique.
- Ajouter une zone de statut pour separer initialisation, execution et resultat.
- Charger un unique script module depuis la page.
- Dans ce script, charger `module2.wasm`, puis `module1.wasm`, puis `mono.wasm`.
- Ne pas inclure de travail DOM dans la portion mesuree du benchmark.

### 3. Implementer le module WASM 2

- Exporter une fonction de calcul pur a signature simple, idealement basee sur
  des `i32`.
- Garder une logique courte et stable pour ne pas polluer la mesure par des
  effets annexes.
- Eventuellement exporter une fonction de controle simple pour verifier que le
  module est bien charge.

### 4. Implementer le module WASM 1

- Importer la fonction de calcul fournie par WASM 2.
- Exporter une fonction principale appelee par JavaScript.
- Dans cette fonction, boucler sur un volume de travail parametre et appeler la
  fonction importee a chaque iteration ou a cadence reguliere.
- Retourner une valeur finale pour eviter qu'un traitement soit percu comme
  inutile dans la demonstration.

### 5. Implementer la reference monolithique

- Reprendre exactement la meme logique que WASM 1 + WASM 2 dans un seul module.
- Exporter la meme API publique que WASM 1 pour faciliter la comparaison.
- Verifier que les resultats fonctionnels sont identiques.

### 6. Implementer la reference JavaScript

- Reproduire la meme primitive et la meme boucle en JavaScript pur.
- Utiliser les memes parametres d'entree et le meme nombre d'iterations.
- Conserver le meme type de sortie pour comparer les resultats facilement.

## Strategie de benchmark

Comparer trois scenarii :

- `double-wasm` : appel JavaScript -> WASM 1 -> WASM 2 ;
- `mono-wasm` : appel JavaScript -> WASM monolithique ;
- `js-pur` : appel JavaScript -> fonction JavaScript equivalente.

Le protocole recommande :

- phase de warmup hors affichage ;
- plusieurs repetitions par scenario ;
- mesure au `performance.now()` autour de la seule zone de calcul ;
- calcul au minimum de la moyenne, du minimum et du maximum ;
- affichage du ratio de surcout relatif `double-wasm / mono-wasm` ;
- affichage d'un commentaire de synthese interpretable directement dans la page.

## Presentation dans la page

La page doit contenir :

- un titre et une courte explication de l'architecture ;
- un bloc rappelant le chemin d'appel mesure ;
- un tableau avec au minimum : scenario, resultat fonctionnel, iterations,
  moyenne, min, max, ratio ;
- une phrase de conclusion qui aide a lire le resultat sans survendre la mesure.

## Makefile et execution

Le plan d'execution recommande est :

- `make build` : compiler `module1.wat`, `module2.wat` et `mono.wat` ;
- `make serve` : lancer un serveur HTTP local, car le chargement navigateur des
  `.wasm` via `fetch()` ne doit pas reposer sur `file://` ;
- eventuellement `make run` : lancer une variante Node si une verification hors
  navigateur est utile, sans en faire la demonstration principale.

## Etapes d'implementation

1. Creer le `Makefile` et les cibles de compilation des trois modules.
2. Ecrire `module2.wat` avec une primitive de calcul exportee.
3. Ecrire `module1.wat` avec import de la primitive et boucle principale.
4. Ecrire `mono.wat` avec logique equivalente en un seul module.
5. Ecrire le script JavaScript de chargement et de benchmark.
6. Ecrire `index.html` avec le tableau de restitution.
7. Ajouter un `README.md` local pour decrire lancement et interpretation.
8. Verifier l'equivalence fonctionnelle des trois scenarii.
9. Ajuster le volume de travail pour obtenir une mesure stable et lisible.
10. Finaliser la presentation du ratio de surcout relatif.

## Validation prevue

- Les trois implementations retournent le meme resultat.
- WASM 1 ne fonctionne que si WASM 2 est correctement injecte a l'instanciation.
- Le tableau s'affiche dans le navigateur sans bruit console bloquant.
- Le benchmark se relance de maniere deterministe a parametres identiques.
- Le resultat montre explicitement l'ecart entre architecture composee,
  monolithique et JavaScript pur.

## Points de vigilance

- Eviter un calcul trop petit, sinon le bruit de mesure dominera.
- Eviter un calcul trop gros, sinon on masquera le cout du bridge.
- Garder des signatures simples entre modules pour ne pas complexifier le WAT.
- Ne pas mesurer la phase d'instanciation en meme temps que la phase de calcul.
- Indiquer clairement qu'il s'agit d'un micro-benchmark local, pas d'une loi
  generale sur tous les usages WebAssembly.

## Definition du succes

L'exemple est termine si :

- il se lance dans un navigateur via un serveur local simple ;
- il demontre une delegation reelle de WASM 1 vers WASM 2 ;
- il affiche un benchmark lisible dans la page ;
- il permet de soutenir, chiffres visibles a l'appui, que le bridge entre deux
  modules WASM a un faible surcout relatif dans ce scenario.
