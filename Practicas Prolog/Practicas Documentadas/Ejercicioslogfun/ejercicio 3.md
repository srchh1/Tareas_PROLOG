# Programa de Clasificación de Letras

## Descripción
Este programa en Lisp clasifica una letra ingresada por el usuario como vocal, semivocal o consonante. La clasificación se realiza según ciertas reglas predefinidas.

## Funciones

### `main`
La función `main` es la función principal del programa. Solicita al usuario que ingrese una letra, la procesa y la clasifica utilizando una estructura de control `cond`.

(defun main()
  (princ "Ingrese una letra: ")
  (setq letra (char-downcase (read-char)))

### `Clasificación de Letras`
El programa utiliza la función char-downcase para convertir la letra ingresada a minúscula y luego evalúa la letra utilizando una estructura `cond`.

  (cond
    ((member letra '(#\a #\e #\i #\o #\u)) (princ "Vocal"))
    ((char= letra #\y) (princ "Semivocal"))
    (t (princ "Consonante"))
  )
  (values)
)
