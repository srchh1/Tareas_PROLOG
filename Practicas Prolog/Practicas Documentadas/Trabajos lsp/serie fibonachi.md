# Función Fibonacci

## Descripción
Este programa en Lisp implementa la función `fibo`, que calcula el número Fibonacci correspondiente a una posición dada. La función utiliza recursividad para calcular la serie de Fibonacci.

## Función `fibo`

### Descripción
La función `fibo` calcula el número Fibonacci correspondiente a la posición `x` en la serie.

(defun fibo(x)
    
    (setq a '0)
    (setq b '1)

    (if (= x 1)
    a
    )

    (if (= x 2)
    b
    )

    (+ (fibo(- x 1)) (fibo(- x 2))
    )
)

### `Implementación de Fibonacci`
La función utiliza variables `a` y `b` para almacenar los dos primeros números de Fibonacci (0 y 1). Luego, mediante una estructura condicional, comprueba si `x` es 1 o 2 y devuelve `a` o `b` respectivamente. Si `x` es mayor que 2, la función utiliza recursividad para calcular la suma de los números Fibonacci de las posiciones `x-1` y `x-2`.
