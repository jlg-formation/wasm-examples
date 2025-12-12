# Sécurité WebAssembly dans le navigateur

> **Question QCM : q19**  
> Quelle garantie de sécurité WebAssembly offre-t-il concernant l'exécution de code non fiable ?

## Réponse

Le code WebAssembly s'exécute dans la **même sandbox que JavaScript**, avec les mêmes restrictions de sécurité (same-origin policy, etc.).

## Modèle de sécurité

### 1. Sandbox partagée avec JavaScript

WebAssembly hérite du modèle de sécurité du navigateur :

| Restriction         | Description                                  |
| ------------------- | -------------------------------------------- |
| Same-Origin Policy  | Pas d'accès aux ressources d'autres origines |
| CSP                 | Respect des Content Security Policy          |
| Pas d'accès système | Pas de fichiers, réseau, processus directs   |
| Mémoire isolée      | Chaque module a sa propre mémoire linéaire   |

### 2. Ce que WASM ne peut PAS faire seul

```
❌ Accéder au DOM directement
❌ Faire des requêtes réseau
❌ Lire/écrire des fichiers
❌ Exécuter du code arbitraire sur le système
❌ Accéder à la mémoire d'autres onglets
```

### 3. Ce que WASM peut faire

```
✅ Calculs numériques dans sa mémoire isolée
✅ Appeler des fonctions JavaScript importées
✅ Exporter des fonctions vers JavaScript
✅ Partager de la mémoire avec JavaScript (contrôlé)
```

## Différence avec les plugins natifs

| Aspect            | Plugins (Flash, Java)  | WebAssembly          |
| ----------------- | ---------------------- | -------------------- |
| Sandbox           | Faible ou contournable | Stricte, vérifiée    |
| Accès système     | Souvent possible       | Impossible sans WASI |
| Validation        | Limitée                | À chaque chargement  |
| Isolation mémoire | Variable               | Garantie             |

## Validation du bytecode

Chaque module WASM est **validé avant exécution** :

1. **Structure** : Format binaire correct
2. **Types** : Correspondance des signatures
3. **Mémoire** : Accès dans les bornes
4. **Pile** : Équilibre des opérations

Un module invalide est **rejeté avant exécution**.

## WASI : accès système contrôlé

Pour les applications hors navigateur, **WASI** fournit un accès système :

- Basé sur les **capabilities** (droits explicites)
- Le runtime contrôle ce que le module peut faire
- Pas d'accès implicite au système de fichiers

```javascript
// Le runtime décide des capabilities
const wasi = new WASI({
  preopens: { "/sandbox": "/path/to/dir" }, // Seul ce dossier est accessible
});
```

## Liens

- Sécurité WASM : https://webassembly.org/docs/security/
- WASI Capabilities : https://github.com/bytecodealliance/wasmtime/blob/main/docs/WASI-capabilities.md
