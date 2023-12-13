# Juego de Adivinanza de Personajes de Bob Esponja

Este programa en Prolog implementa un juego de adivinanza para adivinar personajes de Bob Esponja. El juego utiliza reglas y preguntas para determinar el personaje elegido por el usuario.

## Definición de Personajes

Los personajes de Bob Esponja se definen usando el predicado `personaje/1`. Los personajes incluidos son:
- bob_esponja
- patricio
- arenita
- plankton

personaje(bob_esponja).
personaje(patricio).
personaje(arenita).
personaje(plankton).

## Reglas para Adivinar el Personaje

### Predicado `adivina_personaje`
El juego comienza con la regla `adivina_personaje`, que hace la primera pregunta sobre si el personaje es un marino.

adivina_personaje :-
    write('¿Tu personaje es un marino? (s/n): '),
    read(Resp1),
    (Resp1 = 's' -> adivina_marino ; adivina_calamar).


### Predicado `adivina_marino`
Este predicado pregunta si el personaje es una esponja amarilla si el usuario responde afirmativamente a la pregunta anterior.

adivina_marino :-
    write('¿Tu personaje es una esponja amarilla? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_amigo_bob ; adivina_otro_marino).

### Predicado `adivina_amigo_bob`
Si el personaje es una esponja amarilla, este predicado pregunta si es amigo de Bob Esponja.

adivina_amigo_bob :-
    write('¿Tu personaje es amigo de Bob Esponja? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_rareza_4(patricio) ; adivina_rareza_5).

### Predicado `adivina_rareza_4`
Este predicado pregunta si el personaje es de rareza 4 y, en caso afirmativo, adivina el personaje.

adivina_rareza_4(Personaje) :-
    write('¿Tu personaje es de rareza 4? (s/n): '),
    read(Resp),
    (Resp = 's' -> personaje(Personaje), write('¡Tu personaje es '), write(Personaje), nl ; write('¡No se encontró el personaje!'), nl).

### Predicado `adivina_rareza_5`
Si el personaje no es de rareza 4, este predicado pregunta si es de rareza 5 y muestra el resultado.

adivina_rareza_5 :-
    write('¿Tu personaje es de rareza 5? (s/n): '),
    read(Resp),
    (Resp = 's' -> write('¡No se encontró el personaje!'), nl ; write('¡No se encontró el personaje!'), nl).

### Predicado `adivina_otro_marino`
Si el personaje no es una esponja amarilla, este predicado pregunta si es otro tipo de marino.

adivina_otro_marino :-
    write('¿Tu personaje es otro tipo de marino? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_otra_especie ; adivina_otro_marino).


### Predicado `adivina_otra_especie`
Si el personaje es otro tipo de marino, este predicado pregunta si es un calamar.

adivina_otra_especie :-
    write('¿Tu personaje es un calamar? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_color_rosado ; adivina_otra_especie).

### Predicado `aadivina_color_rosado`
Si el personaje es un calamar, este predicado pregunta si es de color rosado.

adivina_color_rosado :-
    write('¿Tu personaje es de color rosado? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_rareza_5(plankton) ; write('¡No se encontró el personaje!'), nl).
