### Figura 1: Cuadrado y Cubo

#### `areaCuadrado`

Esta función calcula el área de un cuadrado.

- **Entrada:**
  - Solicita al usuario el lado del cuadrado.

- **Salida:**
  - Imprime el área del cuadrado.

  (defun areaCuadrado()
    (princ "Dame el lado de cuadrado: ")
    (setq lado (read))
    (setq resultado (* lado lado))
    (format t "El área del Cuadrado es: ~d" resultado)
)

#### `volCubo`

Esta función calcula el volumen de un cubo.

- **Entrada:**
  - Solicita al usuario el lado del cubo.

- **Salida:**
  - Imprime el volumen del cubo.

  (defun volCubo()
    (princ "Dame el lado del cubo: ")
    (setq lado (read))
    (setq resultado (* lado (* lado lado)))
    (format t "El volumen del Cubo es: ~d" resultado)
)

### Figura 2: Triángulo y Pirámide Triangular

#### `areaTriangulo`

Esta función calcula el área de un triángulo.

- **Entrada:**
  - Solicita al usuario la base y la altura del triángulo.

- **Salida:**
  - Imprime el área del triángulo.

  (defun areaTriangulo()
    (princ "Dame la base: ")
    (setq base (read))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq resultado (/ (* base altura) 2))
    (format t "El area del Triangulo es: ~d" resultado)
)

#### `volPTriangular`

Esta función calcula el volumen de una pirámide triangular.

- **Entrada:**
  - Solicita al usuario la base, altura y altura lateral de la pirámide.

- **Salida:**
  - Imprime el volumen de la pirámide triangular.

  (defun volPTriangular()
    (princ "Dame la base del prisma triagular: ")
    (setq base (read))
    (princ "Dame la altura del prisma triangula: ")
    (setq altura (read))
    (princ "Dame la altura lateral: ")
    (setq  altura_lateral (read))
    (setq resultado ( / (* altura_lateral (* base altura)) 2))
    (format t "El volumen de la Piramide Triangular es: ~d" resultado)
) 


### Figura 3: Círculo y Esfera

#### `areaCirculo`

Esta función calcula el área de un círculo.

- **Entrada:**
  - Solicita al usuario el radio del círculo.

- **Salida:**
  - Imprime el área del círculo.

  (defun areaCirculo()
    (princ "Dame el radio del circulo: ")
    (setq radio (read))
    (setq resultado (* *pi* (* radio radio)))
    (format t "El area del Cicrulo es de: ~d" resultado)
)   


#### `volEsfera`

Esta función calcula el volumen de una esfera.

- **Entrada:**
  - Solicita al usuario el radio de la esfera.

- **Salida:**
  - Imprime el volumen de la esfera.

  (defun volEsfera()
    (princ "Dame el radio de la esfera: ")
    (setq radio (read))
    (setq resultado (/ (* 4 *pi* (* radio (* radio radio))) 3))
    (format t "El volumen de la Esfera es de: ~d" resultado)
) 

### Figura 4: Rectángulo y Ortoedro

#### `areaRectangulo`

Esta función calcula el área de un rectángulo.

- **Entrada:**
  - Solicita al usuario la base y la altura del rectángulo.

- **Salida:**
  - Imprime el área del rectángulo.

  (defun areaRectangulo()
    (princ "Dame la base del rectangulo: ")
    (setq base (read))
    (princ "Dame la altura del rectangulo: ")
    (setq altura (read))
    (setq resultado (* base altura))
    (format t "El area del Rectangulo es de: ~d" resultado)
) 

#### `volOrtoedro`

Esta función calcula el volumen de un ortoedro.

- **Entrada:**
  - Solicita al usuario la base, altura y ancho del ortoedro.

- **Salida:**
  - Imprime el volumen del ortoedro.

  (defun volOrtoedro()
    (princ "Dame la base del ortoedro: ")
    (setq base (read))
    (princ "Dame la altura del ortoedro: ")
    (setq altura (read))
    (princ "Dame el ancho del ortoedro: ")
    (setq ancho (read))
    (setq resultado (* base (* altura ancho)))
    (format t "El volumen del Otoedro es de: ~d" resultado)
) 

### Figura 5: Trapecio y Prisma Trapezoidal

#### `areaTrapecio`

Esta función calcula el área de un trapecio.

- **Entrada:**
  - Solicita al usuario la base mayor, la base menor y la altura del trapecio.

- **Salida:**
  - Imprime el área del trapecio.

  (defun areaTrapecio()
    (princ "Dame la base mayor del trapecio: ")
    (setq base_mayor (read))
    (princ "Dame la base menor del trapecio: ")
    (setq base_menor (read))
    (princ "Dame la altura del trapecio: ")
    (setq altura (read))
    (setq resultado (/ (* altura (+ base_mayor base_menor)) 2))
    (format t "El area del Trapecio es de: ~d" resultado)
) 

#### `volPTrapezoidal`

Esta función calcula el volumen de un prisma trapezoidal.

- **Entrada:**
  - Solicita al usuario el área del trapecio y la altura del prisma.

- **Salida:**
  - Imprime el volumen del prisma trapezoidal.

  (defun volPTrapezoidal()
    (princ "Dame la el area del trapecio: ")
    (setq area (read))
    (princ "Dame la altura del prisma trapezoidal: ")
    (setq altura (read))
    (princ "Dame la base menor del trapecio: ")
    (setq resultado (* area altura))
    (format t "El volumen del Prisma Trapezoidal es de: ~d" resultado)
) 

### Figura 6: Pentágono y Prisma Pentagonal

#### `areaPentagono`

Esta función calcula el área de un pentágono.

- **Entrada:**
  - Solicita al usuario el perímetro y la apotema del pentágono.

- **Salida:**
  - Imprime el área del pentágono.

  (defun areaPentagono()
    (princ "Dame el perimetro del pentagono: ")
    (setq perimetro (read))
    (princ "Dame el apotema del pentagono: ")
    (setq apotema (read))
    (setq resultado (/ (* perimetro apotema) 2))
    (format t "El area del Pentagono es de: ~d" resultado)
) 

#### `volPPentagonal`

Esta función calcula el volumen de un prisma pentagonal.

- **Entrada:**
  - Solicita al usuario el área del pentágono y la altura del prisma.

- **Salida:**
  - Imprime el volumen del prisma pentagonal.

  (defun volPPentagonal()
    (princ "Dame la el area del pentagono: ")
    (setq area (read))
    (princ "Dame la altura del prisma pentagonal: ")
    (setq altura (read))
    (setq resultado (/ (* area altura) 2))
    (format t "El volumen del Prisma Pentagonal es de: ~d" resultado)
) 

### Figura 7: Heptágono y Prisma Heptagonal

#### `areaHeptagono`

Esta función calcula el área de un heptágono.

- **Entrada:**
  - Solicita al usuario el tamaño del heptágono y la apotema.

- **Salida:**
  - Imprime el área del heptágono.

  (defun areaHeptagono()
    (princ "Dame el el tamaño del heptagono: ")
    (setq perimetro (read))
    (princ "Dame el apotema del heptagono: ")
    (setq apotema (read))
    (setq resultado (/ (* perimetro apotema) 2))
    (format t "El area de la Heptagono es de: ~d" resultado)
) 

#### `volPHeptagonal`

Esta función calcula el volumen de un prisma heptagonal.

- **Entrada:**
  - Solicita al usuario el área del heptágono y la altura del prisma.

- **Salida:**
  - Imprime el volumen del prisma heptagonal.

  (defun volPHeptagonal()
    (princ "Dame la el area del heptagono: ")
    (setq area (read))
    (princ "Dame la altura del prisma heptagonal: ")
    (setq altura (read))
    (setq resultado (/ (* area altura) 2))
    (format t "El volumen del Prisma Heptagonal es de: ~d" resultado)
) 

### Figura 8: Icosaedro

#### `areaIcosaedro`

Esta función calcula el área de un icosaedro.

- **Entrada:**
  - Solicita al usuario la longitud del lado del icosaedro.

- **Salida:**
  - Imprime el área del icosaedro.

  (defun areaIcosaedro()
    (princ "Dame la longitud de lado del icosaedro: ")
    (setq lado (read))
    (setq resultado (* (sqrt 3) (* 5 (* lado lado))))
    (format t "El area del Icosaedro es de: ~d" resultado)
) 

#### `volIcosaedro`

Esta función calcula el volumen de un icosaedro.

- **Entrada:**
  - Solicita al usuario la longitud del lado del icosaedro.

- **Salida:**
  - Imprime el volumen del icosaedro.

  (defun volIcosaedro()
    (princ "Dame la longitud de lado del icosaedro: ")
    (setq lado (read))
    (setq resultado (/ (* lado (+ 3 (sqrt 5))) 12))
    (format t "El volumen del Icosaedro es de: ~d" resultado)
) 

### Figura 9: Cono

#### `areaCono`

Esta función calcula el área de un cono.

- **Entrada:**
  - Solicita al usuario el radio y la generatriz del cono.

- **Salida:**
  - Imprime el área del cono.

  (defun areaCono()
    (princ "Dame el radio del cono: ")
    (setq r (read))
    (princ "Dame el generatriz del cono: ")
    (setq g (read))
    (setq resultado (* (* *pi* r) (+ r g)))
    (format t "El area del Cono es de: ~d" resultado)
) 


#### `volCono`

Esta función calcula el volumen de un cono.

- **Entrada:**
  - Solicita al usuario el radio y la altura del cono.

- **Salida:**
  - Imprime el volumen del cono.

  (defun volCono()
    (princ "Dame el radio del cono: ")
    (setq r (read))
    (princ "Dame la altura del cono")
    (setq h (read))
    (setq resultado ( / (* *pi* (* (* r r) h)) 3))
    (format t "El volumen del Cono es de: ~d" resultado)
)

### Figura 10: Rombo y Octaedro

#### `areaRomdo`

Esta función calcula el área de un rombo.

- **Entrada:**
  - Solicita al usuario la diagonal mayor y la diagonal menor.

- **Salida:**
  - Imprime el área del rombo.

  (defun areaRomdo()
    (princ "Dame la diagonal mayor: ")
    (setq d_mayor (read))
    (princ "Dame la diagonal menor: ")
    (setq d_menor (read))
    (setq resultado (/ (* d_mayor d_menor) 2))
    (format t "El area del Rombo es de: ~d" resultado)
) 

#### `volOctaedro`

Esta función calcula el volumen de un octaedro.

- **Entrada:**
  - Solicita al usuario la longitud del lado del octaedro.

- **Salida:**
  - Imprime el volumen del octaedro.

  (defun volOctaedro()
    (princ "Dame la longitud de lado del octaedro: ")
    (setq lado (read))
    (setq resultado (/ (* (sqrt 2) (* lado (* lado lado))) 3))
    (format t "El volumen del Octaedro es de: ~d" resultado)
)
