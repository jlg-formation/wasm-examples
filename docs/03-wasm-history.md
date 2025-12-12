# Historique de WebAssembly et problématique JavaScript

> **Question QCM : q10**  
> Quelle problématique historique du web WebAssembly vise-t-il principalement à résoudre ?

## Réponse

WebAssembly a été créé pour pallier les **limitations de performance de JavaScript** pour les applications intensives en calcul.

## Contexte historique

### Les limites de JavaScript

JavaScript, conçu en 1995, n'était pas prévu pour :

- Les **jeux 3D** et moteurs graphiques
- Le **traitement vidéo/audio** en temps réel
- Les applications de **CAO** (Conception Assistée par Ordinateur)
- Les **simulations physiques** complexes
- La **cryptographie** intensive

### Tentatives précédentes

| Technologie       | Période   | Problèmes                            |
| ----------------- | --------- | ------------------------------------ |
| **Java Applets**  | 1995-2015 | Sécurité, lourdeur, plugin requis    |
| **Flash Player**  | 1996-2020 | Plugin propriétaire, sécurité        |
| **ActiveX**       | 1996-2015 | Windows uniquement, sécurité         |
| **NaCl** (Google) | 2011-2017 | Chrome uniquement                    |
| **asm.js**        | 2013-2017 | Toujours du JavaScript, parsing lent |

### L'émergence d'asm.js

**asm.js** (Mozilla, 2013) a prouvé qu'il était possible d'exécuter du code compilé dans le navigateur :

- Sous-ensemble strict de JavaScript
- Optimisable par les moteurs JS
- Compilé depuis C/C++ via Emscripten

Mais asm.js restait du JavaScript texte, avec un parsing coûteux.

### Naissance de WebAssembly (2015-2017)

WebAssembly reprend les idées d'asm.js avec :

- Un **format binaire** compact et rapide à parser
- Une **spécification formelle** par le W3C
- Le support de **tous les navigateurs majeurs** (2017)

## Chronologie

- **2015** : Annonce de WebAssembly par Mozilla, Google, Microsoft, Apple
- **2017** : Support dans tous les navigateurs majeurs
- **2019** : Recommandation officielle W3C
- **2022** : WASI et Component Model en développement

## Liens

- Annonce originale : https://brendaneich.com/2015/06/from-asm-js-to-webassembly/
- Histoire officielle : https://webassembly.org/docs/history/
