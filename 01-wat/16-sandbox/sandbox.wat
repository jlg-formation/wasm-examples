(module
  ;; Démonstration de la sécurité sandbox de WebAssembly
  ;; 
  ;; Ce module montre que WASM s'exécute dans un environnement isolé :
  ;; - Mémoire limitée à 1 page (64 Ko)
  ;; - Pas d'accès direct au système
  ;; - Accès hors limites = trap (erreur)

  ;; Mémoire linéaire : 1 page = 64 Ko (65536 octets)
  ;; Le module ne peut PAS accéder au-delà de cette limite
  (memory (export "memory") 1)

  ;; Fonction sûre : écriture dans les limites
  ;; Adresse 0-65535 = OK
  (func (export "safe_write") (param $addr i32) (param $value i32)
    local.get $addr
    local.get $value
    i32.store
  )

  ;; Fonction sûre : lecture dans les limites
  (func (export "safe_read") (param $addr i32) (result i32)
    local.get $addr
    i32.load
  )

  ;; Cette fonction provoquera une trap si appelée avec une adresse >= 65536
  ;; Démonstration : l'accès hors limites est détecté et bloqué
  (func (export "try_out_of_bounds") (param $addr i32) (result i32)
    ;; Si $addr >= 65536, cela provoque une RuntimeError
    local.get $addr
    i32.load
  )
)
