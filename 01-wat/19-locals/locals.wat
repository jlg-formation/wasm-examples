;; locals.wat - Démonstration des variables locales en WAT
;;
;; Question QCM: Comment déclare-t-on une variable locale en WAT ?
;; Réponse: Avec (local $name type) dans le corps de la fonction

(module
    ;; Fonction swap: échange deux valeurs en utilisant une variable locale temporaire
    ;; Démontre: local, local.get, local.set
    (func $swap (export "swap") (param $a i32) (param $b i32) (result i32 i32)
        ;; Déclaration d'une variable locale pour stocker temporairement $a
        (local $temp i32)
        
        ;; Sauvegarder $a dans $temp
        (local.set $temp (local.get $a))
        
        ;; Retourner $b (nouveau premier), puis $temp (ancien $a, nouveau second)
        (local.get $b)
        (local.get $temp)
    )
    
    ;; Fonction sum_with_accumulator: calcule 1 + 2 + ... + n
    ;; Démontre: local.tee (assigner et garder sur la pile)
    (func $sum (export "sumWithAccumulator") (param $n i32) (result i32)
        (local $accumulator i32)  ;; Accumulateur pour la somme
        (local $i i32)            ;; Compteur de boucle
        
        ;; Initialiser i = 1
        (local.set $i (i32.const 1))
        
        ;; Boucle: tant que i <= n
        (block $break
            (loop $continue
                ;; Si i > n, sortir
                (br_if $break (i32.gt_s (local.get $i) (local.get $n)))
                
                ;; accumulator += i
                (local.set $accumulator
                    (i32.add (local.get $accumulator) (local.get $i))
                )
                
                ;; i++ avec local.tee (assigne ET retourne la valeur)
                (drop (local.tee $i (i32.add (local.get $i) (i32.const 1))))
                
                ;; Continuer la boucle
                (br $continue)
            )
        )
        
        ;; Retourner l'accumulateur
        (local.get $accumulator)
    )
)
