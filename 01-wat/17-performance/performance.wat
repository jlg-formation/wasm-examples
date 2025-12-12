(module
  ;; Démonstration : boucle de calcul intensif
  ;; Montre pourquoi WASM est plus rapide pour les calculs CPU-bound

  ;; Calcul de la somme des carrés de 1 à n
  ;; sum_squares(n) = 1² + 2² + 3² + ... + n²
  (func (export "sum_squares") (param $n i32) (result i64)
    (local $i i32)
    (local $sum i64)
    
    ;; Initialiser i = 1, sum = 0
    (local.set $i (i32.const 1))
    (local.set $sum (i64.const 0))
    
    ;; Boucle while (i <= n)
    (block $done
      (loop $continue
        ;; Si i > n, sortir
        (br_if $done (i32.gt_s (local.get $i) (local.get $n)))
        
        ;; sum += i * i (en i64 pour éviter overflow)
        (local.set $sum
          (i64.add
            (local.get $sum)
            (i64.mul
              (i64.extend_i32_s (local.get $i))
              (i64.extend_i32_s (local.get $i))
            )
          )
        )
        
        ;; i++
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        
        ;; Continuer la boucle
        (br $continue)
      )
    )
    
    ;; Retourner sum
    (local.get $sum)
  )

  ;; Calcul de Fibonacci (récursif) - exemple de calcul CPU-intensif
  (func (export "fib") (param $n i32) (result i32)
    ;; Si n <= 1, retourner n
    (if (result i32) (i32.le_s (local.get $n) (i32.const 1))
      (then (local.get $n))
      (else
        ;; fib(n-1) + fib(n-2)
        (i32.add
          (call 1 (i32.sub (local.get $n) (i32.const 1)))
          (call 1 (i32.sub (local.get $n) (i32.const 2)))
        )
      )
    )
  )

  ;; Multiplication de matrices 2x2 (pattern commun dans les jeux/3D)
  ;; Entrée: 8 valeurs (a11, a12, a21, a22, b11, b12, b21, b22)
  ;; Retourne la somme des résultats (simplification)
  (func (export "matrix_mul_sum") 
        (param $a11 f64) (param $a12 f64) (param $a21 f64) (param $a22 f64)
        (param $b11 f64) (param $b12 f64) (param $b21 f64) (param $b22 f64)
        (result f64)
    (local $c11 f64)
    (local $c12 f64)
    (local $c21 f64)
    (local $c22 f64)
    
    ;; C = A × B
    ;; c11 = a11*b11 + a12*b21
    (local.set $c11 
      (f64.add 
        (f64.mul (local.get $a11) (local.get $b11))
        (f64.mul (local.get $a12) (local.get $b21))
      )
    )
    
    ;; c12 = a11*b12 + a12*b22
    (local.set $c12
      (f64.add
        (f64.mul (local.get $a11) (local.get $b12))
        (f64.mul (local.get $a12) (local.get $b22))
      )
    )
    
    ;; c21 = a21*b11 + a22*b21
    (local.set $c21
      (f64.add
        (f64.mul (local.get $a21) (local.get $b11))
        (f64.mul (local.get $a22) (local.get $b21))
      )
    )
    
    ;; c22 = a21*b12 + a22*b22
    (local.set $c22
      (f64.add
        (f64.mul (local.get $a21) (local.get $b12))
        (f64.mul (local.get $a22) (local.get $b22))
      )
    )
    
    ;; Retourner c11 + c12 + c21 + c22
    (f64.add
      (f64.add (local.get $c11) (local.get $c12))
      (f64.add (local.get $c21) (local.get $c22))
    )
  )
)
