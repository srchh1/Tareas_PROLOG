# Funciones Matemáticas

## Descripción
Este conjunto de funciones en Lisp implementa operaciones matemáticas básicas utilizando expresiones lambda. Las funciones incluyen el cálculo del área de un cuadrado, el volumen de un cubo, el área de un triángulo y el volumen de un prisma triangular. Además, se define la constante pi.

## Funciones

### `areaCuadrado`
La función lambda areaCuadrado calcula el área de un cuadrado dado el lado.

(defun areaCuadrado()
    (princ "Dame el lado del cuadrado: ")
    (read lado)
    (format t "El resultado es ~A" (funcall *areacuadrado* 4))
)


### `volCubo`
La función lambda `volCubo` calcula el volumen de un cubo dado el lado.

(defvar *volCubo* 
    (lambda (lado) 
        (* lado (* lado lado))
    )
)

### `areaTriangulo`
La función lambda `areaTriangulo` calcula el área de un triángulo dado la base y la altura.

(defvar *areaTriangulo* 
    (lambda(base altura)
        (* base altura)
    )
)

### `volPTriangular`
La función lambda `volPTriangular` calcula el volumen de un prisma triangular dado la altura lateral, la base y la altura.

(defvar *volPTriangular*
    (lambda (altura_lateral base altura)
        ( / (* altura_lateral (* base altura)) 2)
    )
)


### `main`
(defun main()
    (princ "Dame el lado del cuadrado: ")
    (read lado)
    (format t "El área del cuadrado es ~A" (funcall *areaCuadrado* lado))
)

