# Programa de Verificación de Año Bisiesto

## Descripción
Este programa en Lisp verifica si un año ingresado por el usuario es bisiesto o no, utilizando reglas específicas para determinar la condición de bisiesto.

## Funciones

### `main`
La función `main` es la función principal del programa. Solicita al usuario que ingrese un año, verifica si es bisiesto y muestra un mensaje correspondiente utilizando una estructura de control `cond`.

(defun main()
  (princ "Ingrese un anio: ")
  (setq anio (read))

### `Verificación de Año Bisiesto`
El programa utiliza una expresión condicional para determinar si el año ingresado es bisiesto o no.

(cond
  ((or (and (zerop (mod anio 4)) (not (zerop (mod anio 100)))) (zerop (mod anio 400)))
   (format t " El anio es bisiesto"))
  (t (format t "El anio no es bisiesto"))
)
