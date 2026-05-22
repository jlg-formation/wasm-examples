Faire un exemple qui montre emscripten qui compile du code C en WASM utilisant
wasi et qui peut etre lance par wasmtime.

Le programme doit lire deux arguments de la ligne de commande puis ecrire le
premier argument dans un fichier qui porte le nom du deuxieme argument.

Puis le programme affiche un petit mot pour dire succes (ou erreur)

Le but du jeu est de voir les import wasi qui vont etre fait.

L'organisation de cet exemple doit etre similaire a ceux dans `/02-emscripten/`
