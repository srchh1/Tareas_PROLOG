(defun facto(x)
    (if (= x 0)
    1
    (* x (facto (- x 1)))
    )
)