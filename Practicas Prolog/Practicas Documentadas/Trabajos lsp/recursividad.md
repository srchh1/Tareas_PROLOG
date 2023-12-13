# Función de Recorrido de Lista

## Descripción
Este programa en Lisp define una función `recorre` que imprime cada elemento de una lista utilizando recursividad. Se ha corregido la implementación para que funcione adecuadamente.

## Función `recorre`

### Descripción
La función `recorre` imprime cada elemento de la lista proporcionada utilizando recursividad.

(defun recorre(lista)
 (if (equal lista nil) 
  nil
 )   
 (princ (car lista))
 (recorre(cdr lista))
)


### `Recorrido de Lista`
La función utiliza una estructura `if` para verificar si la lista es nula. Si es nula, la función retorna `nil`. De lo contrario, imprime el primer elemento de la lista con `princ` y llama recursivamente a sí misma con la cola de la lista.

(if (equal lista nil) 
    nil
)   
(princ (car lista))
(recorre (cdr lista))
