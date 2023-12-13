# Sistema de Adivinanza de Personajes

## Descripción
Este programa en Lisp implementa un juego de adivinanza de personajes. El juego utiliza un árbol de decisiones para hacer preguntas sobre las características del personaje que el jugador está pensando y deducir quién es ese personaje.

## Funciones

### `getInput`
La función getInput solicita al usuario una entrada y verifica si es válida (Y o N). Si la entrada no es válida, pide una nueva entrada hasta que sea Y o N.

(defun getInput()
  (defvar res)  
  (setq res (read))
  (if (and (not (string= res "Y")) (not (string= res "N")))
      (progn
          (format t "INTENTA DE NUEVO-> ")
          (getInput)
      )
      res
  )
)

### `getNodo`
La función getNodo recorre el árbol de decisiones, haciendo preguntas al usuario sobre el personaje. Retorna el nombre del personaje cuando se encuentra o una lista vacía si no se encuentra.

(defun getNodo(puntero)
  (defvar res)
  (if puntero
      (progn
          (format t "¿Tu personaje es ~a? " (car puntero))
          (force-output)
          (setq res (getInput))
          (cond
              ((string= res "Y") 
                  (car puntero)
              )
              ((string= res "N") 
                  (getNodo (cdr puntero))
              )
          )
      )
      ()
  )
)


### `entra_nuevo`
La función `entra_nuevo` permite al usuario agregar un nuevo personaje al árbol de decisiones. Realiza preguntas para construir el árbol y añade el nuevo personaje al final del árbol.

(defun entra_nuevo(arbol list)
  (defvar lista)
  (defvar nodo)
  (defvar arbol_nuevo)
  (defvar res)
  (setq lista (mapcar #'car arbol))
  (setq nodo (getNodo lista))
  (if (not nodo)
      (progn
          (format t "¿Cómo se llama tu personaje?")
          (force-output)
          (setq res (read))
          (nconc 
              (assoc (car(cddddr list))(cdr (assoc (cadddr list) (cdr (assoc (caddr list) (cdr (assoc (cadr list) (cdr (assoc (car list) *bob-esponja*)))))))))
              (list (list res))
          )
          (terpri)
          (format t "Personaje añadido. Vuelve a buscarlo por favor.")
          (terpri)
          (adivina)
      )
      (setq list (append list (list nodo)))
  ) 
  (setq arbol_nuevo (cdr (assoc nodo arbol)))
  (if arbol_nuevo
      (entra_nuevo arbol_nuevo list)
      nodo
  )
)

### `adivina`
La función `adivina` inicia el juego de adivinanza, llamando a entra_nuevo con el árbol inicial y una lista vacía. Luego, muestra el resultado y pregunta si el usuario quiere jugar de nuevo.

(defun adivina()
  (defvar Lara Croft)
  (defvar res)
  (setq bob-esponja (entra_nuevo *Lara Croft* '()))
  (terpri)
  (format t "El personaje que pensaste es ~a" Lara Croft)
  (terpri)
  (format t "¿Quieres jugar de nuevo?")
  (setq res (getInput))
  (cond
      ((string= res "Y") 
          (adivina)
      )
  )
)
