# Función de Factorial

## Descripción
Esta función en Lisp calcula el factorial de un número entero no negativo utilizando recursión.

## Funciones

### `facto`
La función `facto` calcula el factorial de un número entero no negativo `x`. Utiliza la recursión para realizar el cálculo.

(defun facto(x)
    (if (= x 0)
        1
        (* x (facto (- x 1)))
    )
)

### `Cálculo del Factorial`
La función utiliza una expresión `if` para manejar el caso base donde el factorial de 0 es 1. Para otros valores de `x`, se utiliza la recursión multiplicando `x` por el factorial del número anterior (`(- x 1)`).