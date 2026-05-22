# Plan d'implementation

## Objectif

Construire un exemple Emscripten pedagogique, en francais, qui montre :

- la compilation d'un code C vers un livrable `.wasm` ;
- l'activation des instructions SIMD dans la chaine de build ;
- une vectorisation automatique par le compilateur plutot qu'un usage manuel
  d'intrinsics ;
- une comparaison claire entre une version scalaire et une version SIMD ;
- une execution a la fois dans Node.js et dans le navigateur.

L'exemple doit rester lisible, mais s'adresser a un public technique deja a
l'aise avec les bases de WebAssembly et d'Emscripten.

## Hypothese technique retenue

L'exemple le plus direct pour illustrer la vectorisation automatique est une
addition de vecteurs en C :

- une fonction de reference effectue une addition element par element ;
- une compilation sans SIMD produit une version scalaire de comparaison ;
- une compilation avec `-msimd128` permet au backend LLVM/WebAssembly de generer
  des instructions SIMD lorsque la boucle s'y prete ;
- le wrapper JavaScript charge les deux variantes et compare resultat
  fonctionnel et comportement observable.

Cette approche colle au besoin pedagogique : elle montre que le code source C
reste simple, tandis que la difference de generation se deplace dans les flags
de compilation et dans l'inspection du binaire final.

## Fichiers a produire

- `README.md` : explication du concept, des commandes et de la verification.
- `Makefile` : cibles de build, de lancement et d'inspection.
- `simd.c` : code source C avec boucle vectorisable et API exportee.
- `wrapper.mjs` : execution sous Node.js et comparaison fonctionnelle.
- `index.html` : page de demonstration pour le navigateur.
- `app.mjs` ou un second wrapper navigateur : chargement des modules dans la
  page et affichage des resultats.
- `dist/` : artefacts generes, avec une variante scalaire et une variante SIMD.

## Architecture de l'exemple

L'exemple peut etre structure autour de deux builds issus du meme source C :

- build scalaire : compilation sans SIMD pour servir de reference ;
- build SIMD : compilation avec `-msimd128` pour autoriser la vectorisation.

Les deux builds exposent la meme API JavaScript/WASM afin de simplifier la
comparaison :

- initialisation de buffers de test ;
- execution d'une addition de vecteurs ;
- lecture d'un checksum ou d'une valeur de controle ;
- eventuellement une petite boucle de repetition pour stabiliser la mesure.

## Decoupage fonctionnel

### 1. Definir le noyau C a compiler

Le fichier C doit :

- contenir une boucle simple, reguliere et facile a auto-vectoriser ;
- travailler sur des tableaux alignes ou au moins contigus ;
- exposer une API minimale compatible avec Emscripten ;
- produire un resultat deterministe simple a verifier depuis JavaScript.

Option recommandee :

- initialiser deux tableaux de `float` ou `int32_t` ;
- calculer un troisieme tableau resultat par addition ;
- retourner un checksum pour valider facilement que les deux builds produisent
  la meme sortie.

### 2. Produire deux variantes de compilation

Le `Makefile` doit generer deux sorties distinctes a partir du meme code :

- une variante de reference sans option SIMD ;
- une variante SIMD avec les bons flags Emscripten/WebAssembly ;
- si necessaire, un niveau d'optimisation suffisant pour favoriser la
  vectorisation, par exemple `-O3`.

Le plan doit rendre visible que la presence de SIMD depend autant des options de
compilation que de la forme de la boucle source.

### 3. Exposer une API stable vers JavaScript

Les deux modules doivent presenter la meme interface :

- une fonction de preparation des donnees ;
- une fonction de calcul ;
- une fonction de lecture du resultat ou du checksum.

Cela permet a `wrapper.mjs` et a la page HTML de piloter les deux variantes sans
logique speciale selon le build.

### 4. Ecrire le wrapper Node.js

Le wrapper Node doit :

- charger la version scalaire puis la version SIMD ;
- executer le meme scenario sur les deux ;
- afficher les resultats de verification ;
- afficher clairement quelle sortie correspond a quel build.

Si un benchmark est ajoute, il doit rester secondaire a la demonstration
fonctionnelle et etre presente comme indicatif.

### 5. Ecrire la demonstration navigateur

La page HTML doit :

- charger un script module ;
- permettre de lancer les deux variantes ;
- afficher le checksum ou le resultat de controle ;
- afficher un message de comparaison simple entre build scalaire et build SIMD.

Le but n'est pas une interface riche, mais une preuve d'execution dans un vrai
contexte navigateur, en plus du scenario Node.

### 6. Documenter la verification SIMD

Le `README.md` doit montrer comment verifier que le binaire genere contient bien
des instructions SIMD :

- soit via un outil de desassemblage WebAssembly ;
- soit via une inspection textuelle de la sortie si un outil local est deja
  disponible ;
- en cherchant par exemple des operations `v128` dans le module compile.

Il faut expliquer qu'une compilation avec `-msimd128` n'est pas, a elle seule,
une preuve absolue que la boucle a bien ete vectorisee : la verification du
binaire fait partie de l'exemple.

## Strategie de build

Le `Makefile` devrait fournir au minimum :

- `make build` : construire les variantes scalaire et SIMD ;
- `make run` : executer le wrapper Node.js ;
- `make serve` : lancer un serveur HTTP local pour la demo navigateur ;
- `make inspect` : desassembler ou inspecter le `.wasm` SIMD pour rechercher les
  instructions attendues ;
- `make clean` : supprimer les artefacts generes.

## Etapes d'implementation

1. Creer le `Makefile` avec les cibles de build, d'execution et d'inspection.
2. Ecrire le source C avec une boucle simple et vectorisable.
3. Configurer les exports Emscripten necessaires a l'appel depuis JavaScript.
4. Generer les sorties scalaires et SIMD avec deux configurations distinctes.
5. Ecrire `wrapper.mjs` pour comparer les deux modules sous Node.js.
6. Ecrire la page HTML et son script de chargement pour la demonstration
   navigateur.
7. Ajouter la documentation locale dans `README.md`.
8. Ajouter une procedure de verification des instructions SIMD dans le binaire.
9. Verifier que les deux builds produisent des resultats identiques.
10. Verifier que l'exemple reste conforme au style des autres dossiers
    `02-emscripten`.

## Validation prevue

- `make build` produit bien deux variantes distinctes.
- `make run` execute les deux modules sans erreur sous Node.js.
- la demonstration navigateur charge correctement les artefacts generes.
- les deux variantes renvoient le meme checksum ou resultat final.
- l'inspection du binaire SIMD montre au moins une trace claire d'instructions
  `v128` ou equivalentes.
- le `README.md` suffit a comprendre la chaine de compilation et la preuve de
  vectorisation.

## Points de vigilance

- Une boucle trop simple mais compilee sans optimisation risque de ne pas etre
  vectorisee.
- Une boucle trop complexe risque au contraire de brouiller la pedagogie.
- Il faut eviter de presenter un gain de performance comme garanti sans mesure
  stable et sans contexte.
- Tous les environnements d'execution ne supportent pas SIMD de la meme facon ;
  la documentation doit le signaler sobrement si necessaire.
- La comparaison scalaire/SIMD doit isoler ce qui releve des flags de build, pas
  d'une divergence de logique metier.

## Definition du succes

L'exemple est termine si :

- il compile en deux variantes a partir du meme code C ;
- il s'execute sous Node.js et dans le navigateur ;
- il montre une equivalence fonctionnelle entre version scalaire et version SIMD
  ;
- il documente explicitement comment constater la presence d'instructions SIMD
  dans le `.wasm` ;
- il reste pedagogique et aligne sur le formalisme des autres exemples
  Emscripten du depot.
