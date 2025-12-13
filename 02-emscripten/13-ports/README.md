# Emscripten Ports - Bibliothèques tierces

> **Question QCM associée:** em_q19 - Comment utiliser des bibliothèques tierces
> avec Emscripten ?

## Concept clé

Emscripten inclut un système de **ports** qui fournit des versions précompilées
de bibliothèques tierces populaires.

## Lister les ports disponibles

```bash
emcc --show-ports
```

## Ports populaires

| Port       | Description       | Flag                |
| ---------- | ----------------- | ------------------- |
| SDL2       | Graphiques/Audio  | `-sUSE_SDL=2`       |
| zlib       | Compression       | `-sUSE_ZLIB=1`      |
| libpng     | Images PNG        | `-sUSE_LIBPNG=1`    |
| libjpeg    | Images JPEG       | `-sUSE_LIBJPEG=1`   |
| freetype   | Polices           | `-sUSE_FREETYPE=1`  |
| harfbuzz   | Texte complexe    | `-sUSE_HARFBUZZ=1`  |
| SDL2_image | Chargement images | `-sUSE_SDL_IMAGE=2` |

## Utilisation

```bash
# Exemple avec zlib
emcc program.c -sUSE_ZLIB=1 -o app.js

# Exemple avec SDL2
emcc game.c -sUSE_SDL=2 -o game.js
```

## Exécution de cet exemple

```bash
make build
node wrapper.mjs
```

## Notes

- Les ports sont téléchargés et compilés automatiquement à la première
  utilisation
- Ils sont mis en cache dans `~/.emscripten_cache/`
- Certains ports dépendent d'autres ports
