# Sistema de Evaluación de Préstamos

## Descripción
Este programa en Lisp evalúa la elegibilidad de un solicitante para un préstamo basándose en varios criterios, como el salario, la cantidad solicitada y la historia crediticia.

## Funciones

### `calculo`
La función `calculo` toma tres parámetros: `salario`, `propiedades`, y `cantidad`. Calcula puntos basados en ciertas condiciones relacionadas con estos parámetros y devuelve la cantidad total de puntos acumulados.

(defun calculo (salario propiedades cantidad)
  (let ((puntos 0))
    (when (>= salario (* 0.5 cantidad))
      (setq puntos (+ puntos 5))
    )

    (when (and (>= salario (* 0.25 cantidad))
               (< salario (* 0.5 cantidad)))
      (setq puntos (+ puntos 3))
    )

    (when (and (>= salario (* 0.1 cantidad))
               (< salario (* 0.25 cantidad)))
      (setq puntos (+ puntos 1))
    )

    (when (>= propiedades (* 2 cantidad))
      (setq puntos (+ puntos 5))
    )

    (when (and (= propiedades (* 2 cantidad))
               (< propiedades (* 4 cantidad)))
      (setq puntos (+ puntos 3))
    )

    puntos)
)

### `main`
La función main es la función principal del programa. Solicita información al usuario, incluyendo el nombre del solicitante, la historia crediticia, la cantidad solicitada, el salario y otras propiedades. Luego, utiliza la función calculo para evaluar si el solicitante cumple con los requisitos para obtener el préstamo y muestra un mensaje en consecuencia.

(defun main ()
  (princ "Nombre del solicitante: ")
  (setq nombre (read-line))

  (princ "Historia crediticia ('b' buena o 'm' mala): ")
  (setq historial (char-downcase (read-char)))

  (princ "Cantidad solicitada: ")
  (setq cantidad (read))

  (princ "Salario: ")
  (setq salario (read))

  (princ "Otras propiedades: ")
  (setq propiedades (read))
  
  (cond
    ((and (char= historial #\b)
          (> (calculo salario propiedades cantidad) 6))
     (format t "~A, puede obtener el prestamo~%" nombre))
    (t (format t "~A, no cumple con los requisitos~%" nombre)))
  )

  