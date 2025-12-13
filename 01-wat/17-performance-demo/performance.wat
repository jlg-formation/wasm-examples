(module
  ;; Démonstration : traitement d'image intensif en WASM
  ;; Question QCM : q17
  ;;
  ;; WebAssembly excelle pour les calculs intensifs :
  ;; - Jeux 3D, traitement vidéo/audio, CAO
  ;; - Cryptographie, simulation physique
  ;; - Tout ce qui nécessite des boucles numériques intensives

  ;; Mémoire partagée pour les données d'image
  (memory (export "memory") 1)

  ;; Inverse les couleurs d'une image (RGBA)
  ;; Paramètres : offset de départ, nombre de pixels
  ;; Chaque pixel = 4 octets (R, G, B, A)
  (func (export "invert_colors") (param $offset i32) (param $num_pixels i32)
    (local $i i32)
    (local $addr i32)
    (local $r i32)
    (local $g i32)
    (local $b i32)

    ;; Boucle sur tous les pixels
    (local.set $i (i32.const 0))
    (block $exit
      (loop $loop
        ;; Condition de sortie
        (br_if $exit (i32.ge_u (local.get $i) (local.get $num_pixels)))

        ;; Calculer l'adresse du pixel courant
        (local.set $addr 
          (i32.add 
            (local.get $offset)
            (i32.mul (local.get $i) (i32.const 4))))

        ;; Lire R, G, B (ignorer A)
        (local.set $r (i32.load8_u (local.get $addr)))
        (local.set $g (i32.load8_u (i32.add (local.get $addr) (i32.const 1))))
        (local.set $b (i32.load8_u (i32.add (local.get $addr) (i32.const 2))))

        ;; Inverser : 255 - valeur
        (i32.store8 (local.get $addr) 
          (i32.sub (i32.const 255) (local.get $r)))
        (i32.store8 (i32.add (local.get $addr) (i32.const 1))
          (i32.sub (i32.const 255) (local.get $g)))
        (i32.store8 (i32.add (local.get $addr) (i32.const 2))
          (i32.sub (i32.const 255) (local.get $b)))
        ;; Alpha reste inchangé

        ;; i++
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
  )

  ;; Fonction de calcul intensif : somme de carrés
  ;; Démontre les performances sur les boucles numériques
  (func (export "sum_squares") (param $n i32) (result i64)
    (local $i i32)
    (local $sum i64)

    (local.set $i (i32.const 1))
    (local.set $sum (i64.const 0))

    (block $exit
      (loop $loop
        (br_if $exit (i32.gt_s (local.get $i) (local.get $n)))

        ;; sum += i * i
        (local.set $sum 
          (i64.add 
            (local.get $sum)
            (i64.mul 
              (i64.extend_i32_s (local.get $i))
              (i64.extend_i32_s (local.get $i)))))

        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )

    (local.get $sum)
  )
)
