# Función de Recorrido de Lista

## Descripción
Este programa en Lisp define una función `recorre` que imprime cada elemento de una lista y sus respectivas líneas. Además, se menciona la intención de realizar un commit (aunque no se implementa explícitamente).

## Función `recorre`

### Descripción
La función `recorre` imprime cada elemento de la lista proporcionada y sus respectivas líneas.

(defun recorre (lista)
    (format t "~A-> ~% ~A" (car lista))
    (if lista
        (recorre (cdr lista))
    )
)


