### Función `sumanumero`

Esta función solicita dos números al usuario y calcula la suma.

- **Entrada:**
  - Solicita al usuario dos números.

- **Salida:**
  - Calcula la suma de los dos números, pero actualmente la variable `resultado` no se imprime ni se muestra. Se sugiere descomentar la línea `(write resultado)` para mostrar el resultado.

  (defun sumanumero ()
(princ "Dame un numero: ")
(setq num1 (read))
(princ "Dame un segundo numero: ")
(setq num2 (read))
(setq resultado (+ num1 num2))
;(write resultado)
)

### Función `area1`

Esta función calcula el área de un rectángulo.

- **Entrada:**
  - Solicita al usuario el largo y el ancho del rectángulo.

- **Salida:**
  - Calcula el área del rectángulo y actualmente la variable `resultado` no se imprime ni se muestra. Se sugiere descomentar la línea `(write resultado)` para mostrar el resultado.

  (defun area1 ()
(princ "Escribe el largo de un recatngulo: ")
(setq num1 (read))
(princ "Escribe el ancho de un rectangulo: ")
(setq num2 (read))
(setq resultado (* num1 num2))
;(write resultado)
)

### Función `area2`

Esta función calcula el área de un cuadrado.

- **Entrada:**
  - Solicita al usuario el lado del cuadrado.

- **Salida:**
  - Calcula el área del cuadrado y actualmente la variable `resultado` no se imprime ni se muestra. Se sugiere descomentar la línea `(write resultado)` para mostrar el resultado.

  (defun area2 ()
(princ "Escribe el lado del cuadrado: ")
(setq num1 (read))
(princ "Escribe el lado del cuadrado: ")
(setq num2 (read))
(setq resultado (* num1 num2))
;(write resultado)
)

### Función `area3`

Esta función calcula el área de un triángulo.

- **Entrada:**
  - Solicita al usuario la base y la altura del triángulo.

- **Salida:**
  - Calcula el área del triángulo y actualmente la variable `resultado` no se imprime ni se muestra. Se sugiere descomentar la línea `(write resultado)` para mostrar el resultado.

  (defun area3 ()
(princ "Escribe la base del triangulo: ")
(setq num1 (read))
(princ "Escribe la altura del triangulo: ")
(setq num2 (read))
(setq resultado (* 0.5 num1 num2))
;(write resultado)
)


### Función `area4`

Esta función calcula el área de un triángulo equilátero.

- **Entrada:**
  - Solicita al usuario el lado del triángulo equilátero.

- **Salida:**
  - Calcula el área del triángulo equilátero y actualmente la variable `resultado` no se imprime ni se muestra. Se sugiere descomentar la línea `(write resultado)` para mostrar el resultado.

(defun area4 ()
(princ "Escribe el lado de un triangulo equilatero: ")
(setq num1 (read))
(setq resultado (* num1 num1 0.5 √3))
;(write resultado)
)