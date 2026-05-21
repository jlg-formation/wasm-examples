Objectif

Realiser un exemple pedagogique oriente performance montrant une architecture a
deux modules WebAssembly : une page HTML charge un fichier JavaScript, ce
fichier charge un premier module WASM, et ce premier module s'appuie sur un
deuxieme module WASM pour executer une partie de ses calculs.

L'exemple doit etre comprehensible, mais le niveau de discours vise un public
avance sensible aux questions de cout d'appel, d'orchestration et de surcout
d'abstraction.

Architecture attendue

- Une page HTML unique lance la demonstration.
- Un fichier JavaScript unique sert de point d'entree et d'initialisation.
- Un module WASM 1 joue le role principal cote calcul et expose l'API utilisee
  par JavaScript.
- Un module WASM 2 realise egalement du calcul pur et est utilise par le module
  WASM 1.
- Le chemin cible est un appel WASM1 -> WASM2 aussi direct que possible du point
  de vue de l'utilisateur, sans bridge JavaScript visible dans l'usage metier.

Contraintes de conception

- Privilegier la solution la plus performante compatible avec l'objectif de la
  demonstration.
- Limiter au maximum le code JavaScript de glue aux besoins d'initialisation,
  d'instanciation et d'affichage des resultats.
- Garder une implementation lisible, mais sans sacrifier inutilement les choix
  techniques ayant un impact sur les mesures.
- La demonstration doit rester autoportee dans le dossier de l'exemple.

Demonstration fonctionnelle

La page doit permettre de :

- charger les artefacts necessaires ;
- executer un calcul via WASM 1 ;
- montrer que WASM 1 delegue une partie du travail a WASM 2 ;
- afficher les resultats dans la page, sous forme exploitable.

Benchmark attendu

Le coeur de l'exemple est un benchmark qui met en evidence que le bridge entre
WASM 1 et WASM 2 reste leger.

Le benchmark doit inclure au minimum les comparaisons suivantes :

- appel via l'architecture a deux modules WASM ;
- appel equivalent en JavaScript pur ;
- appel equivalent dans une version WASM monolithique a un seul module.

Les mesures doivent etre presentees dans un tableau visible dans la page HTML.

Definition de "leger"

Le brief doit demontrer un faible surcout relatif du passage par l'architecture
a deux modules, compare aux alternatives retenues. L'objectif n'est pas de fixer
un seuil absolu arbitraire, mais de montrer que le cout additionnel du bridge
reste faible devant le travail de calcul effectue.

Exigences sur le protocole de mesure

- Mesurer plusieurs iterations pour eviter les conclusions basees sur un appel
  unique.
- Comparer des traitements strictement equivalents sur le plan fonctionnel.
- Distinguer clairement phase d'initialisation et phase de mesure.
- Eviter autant que possible les biais grossiers lies au rendu DOM dans la zone
  mesuree.
- Produire des resultats lisibles, avec unites et libelles explicites.

Livrables attendus

- une page HTML ;
- un fichier JavaScript d'initialisation ;
- un premier module WASM ;
- un deuxieme module WASM ;
- si necessaire, une variante de reference monolithique pour le benchmark ;
- une courte explication dans le code ou la documentation locale pour decrire le
  scenario mesure.

Criteres d'acceptation

- la page se charge et execute la demonstration sans intervention manuelle autre
  que l'ouverture normale de l'exemple ;
- le role respectif de WASM 1 et WASM 2 est identifiable ;
- le benchmark compare bien les trois strategies attendues ;
- les resultats sont affiches dans un tableau ;
- la conclusion visible de l'exemple permet d'argumenter que le bridge entre les
  deux modules est leger en surcout relatif.
