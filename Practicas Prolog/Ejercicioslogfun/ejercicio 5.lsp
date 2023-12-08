(defun main()
  (princ "Ingrese el numero de mes: ")
  (setq mes (read))

  (cond
    ((member mes '(1 3 5 7 8 10 12)) (princ "El mes tiene 31 dias."))
    ((member mes '(4 6 9 11)) (princ "El mes tiene 30 dias."))
    ((= mes 2) (princ "El mes tiene 28 dias."))
    (t (princ "MES ERRONEO."))
  )
  (values)
)
