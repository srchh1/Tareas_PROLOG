( defun main()
  (princ "Ingrese una letra: ")
  (setq letra (char-downcase (read-char)))

  (cond
    ((member letra '(#\a #\e #\i #\o #\u)) (princ "Vocal"))
    ((char= letra #\y) (princ "Semivocal"))
    (t (princ "Consonante"))
  )
  (values)
)
