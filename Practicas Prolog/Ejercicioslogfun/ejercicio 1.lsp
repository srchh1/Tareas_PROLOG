;problema 1

;if
(defun tienda()
    (princ "¿Cuántos pantalones va comprar?: ")

    (setq num (read))

    (if(< num 5)
        (setq tot (* num 80))
        (format t "Su compra es de ~d" tot)
    )
)

;case
(defun total (cantidad)
  (setq precio 20)
  (cond
    ((< cantidad 5) (* precio cantidad)) 
    ((and (>= cantidad 5) (< cantidad 12)) (* (* precio 0.85) cantidad)) 
    ((>= cantidad 12) (* (* precio 0.70) cantidad))
  )
) 

(defun main()
  (princ "Cantidad de pantalones a comprar: ")
  (setq cantidad (read))
  (format t "Total a pagar: ~A~%" (total cantidad))
)

