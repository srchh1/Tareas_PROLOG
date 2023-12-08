(defun main()
  (princ "Ingrese un anio: ")
  (setq anio (read))

  (cond
    (
      (or (and (zerop (mod anio 4)) (not (zerop (mod anio 100)))) (zerop (mod anio 400)))
      (format t " El anio es bisiesto"))

      (t (format t "El anio no es bisiesto"))
    ) 
  (values)
)
