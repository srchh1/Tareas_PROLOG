# Programa de Verificación de Días en un Mes

## Descripción
Este programa en Lisp verifica el número de días en un mes, solicitando al usuario que ingrese el número del mes y luego determinando la cantidad de días según las reglas calendáricas.

## Funciones

### `main`
La función `main` es la función principal del programa. Solicita al usuario que ingrese el número del mes, verifica y muestra la cantidad de días en ese mes utilizando una estructura de control `cond`.

User
(defun main()
  (princ "Ingrese el numero de mes: ")
  (setq mes (read))


### `Verificación de Días en un Mes`
El programa utiliza una expresión condicional para determinar la cantidad de días en el mes ingresado.

(cond
  ((member mes '(1 3 5 7 8 10 12)) (princ "El mes tiene 31 dias."))
  ((member mes '(4 6 9 11)) (princ "El mes tiene 30 dias."))
  ((= mes 2) (princ "El mes tiene 28 dias."))
  (t (princ "MES ERRONEO."))
)
