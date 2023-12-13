# Función de Suma en Lisp

## Descripción
Este programa en Lisp implementa una función `suma` que solicita dos números al usuario, realiza la suma y muestra el resultado. La función utiliza la función `eval` para evaluar la expresión que representa la suma de los números introducidos.

## Función `suma`

### Descripción
La función `suma` solicita dos números al usuario, realiza la suma y muestra el resultado.

(defun suma()
    (princ "Dame un numero: ")
    (setq num1 (read))
    (princ "Dame un segundo numero:")
    (setq num2 (read))
    (setq resultado '(+ num1 num2)) 
    ;(write resultado)
    (eval resultado)
)


