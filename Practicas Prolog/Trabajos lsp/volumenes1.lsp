(defun sumanumero ()
(princ "Dame un numero: ")
(setq num1 (read))
(princ "Dame un segundo numero: ")
(setq num2 (read))
(setq resultado (+ num1 num2))
;(write resultado)
)

(defun area1 ()
(princ "Escribe el largo de un recatngulo: ")
(setq num1 (read))
(princ "Escribe el ancho de un rectangulo: ")
(setq num2 (read))
(setq resultado (* num1 num2))
;(write resultado)
)

(defun area2 ()
(princ "Escribe el lado del cuadrado: ")
(setq num1 (read))
(princ "Escribe el lado del cuadrado: ")
(setq num2 (read))
(setq resultado (* num1 num2))
;(write resultado)
)

(defun area3 ()
(princ "Escribe la base del triangulo: ")
(setq num1 (read))
(princ "Escribe la altura del triangulo: ")
(setq num2 (read))
(setq resultado (* 0.5 num1 num2))
;(write resultado)
)

(defun area4 ()
(princ "Escribe el lado de un triangulo equilatero: ")
(setq num1 (read))
(setq resultado (* num1 num1 0.5 √3))
;(write resultado)
)

