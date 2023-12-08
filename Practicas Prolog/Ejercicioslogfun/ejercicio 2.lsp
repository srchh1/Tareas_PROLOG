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
