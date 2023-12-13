# Problema 1: Sistema de Tienda de Pantalones

## Descripción
Este programa en Lisp simula un sistema de tienda que calcula el total a pagar según la cantidad de pantalones que el cliente desea comprar.

## Funciones

### `tienda`
La función `tienda` solicita al usuario la cantidad de pantalones que desea comprar. Luego, calcula el total a pagar según la cantidad ingresada, utilizando una estructura condicional `if`. Si la cantidad es menor que 5, el precio por pantalón es de $80, de lo contrario, se muestra el total calculado.

(defun tienda()
    (princ "¿Cuántos pantalones va comprar?: ")

    (setq num (read))

    (if(< num 5)
        (setq tot (* num 80))
        (format t "Su compra es de ~d" tot)
    )
)

### `total`
La función `total` recibe la cantidad de pantalones como argumento y calcula el total a pagar utilizando una estructura de control cond. Dependiendo de la cantidad ingresada, se aplican descuentos proporcionales al precio por pantalón.

(defun total (cantidad)
  (setq precio 20)
  (cond
    ((< cantidad 5) (* precio cantidad)) 
    ((and (>= cantidad 5) (< cantidad 12)) (* (* precio 0.85) cantidad)) 
    ((>= cantidad 12) (* (* precio 0.70) cantidad))
  )
) 

### `main`
La función main es la función principal del programa. Solicita al usuario la cantidad de pantalones que desea comprar y muestra el total a pagar llamando a la función `total`.

(defun main()
  (princ "Cantidad de pantalones a comprar: ")
  (setq cantidad (read))
  (format t "Total a pagar: ~A~%" (total cantidad))
)