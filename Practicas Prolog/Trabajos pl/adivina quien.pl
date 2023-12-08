% Definición de personajes de Bob Esponja
personaje(bob_esponja).
personaje(patricio).
personaje(arenita).
personaje(plankton).

% Reglas para hacer preguntas y adivinar el personaje
adivina_personaje :-
    write('¿Tu personaje es un marino? (s/n): '),
    read(Resp1),
    (Resp1 = 's' -> adivina_marino ; adivina_calamar).

adivina_marino :-
    write('¿Tu personaje es una esponja amarilla? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_amigo_bob ; adivina_otro_marino).

adivina_amigo_bob :-
    write('¿Tu personaje es amigo de Bob Esponja? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_rareza_4(patricio) ; adivina_rareza_5).

adivina_rareza_4(Personaje) :-
    write('¿Tu personaje es de rareza 4? (s/n): '),
    read(Resp),
    (Resp = 's' -> personaje(Personaje), write('¡Tu personaje es '), write(Personaje), nl ; write('¡No se encontró el personaje!'), nl).

adivina_rareza_5 :-
    write('¿Tu personaje es de rareza 5? (s/n): '),
    read(Resp),
    (Resp = 's' -> write('¡No se encontró el personaje!'), nl ; write('¡No se encontró el personaje!'), nl).

adivina_otro_marino :-
    write('¿Tu personaje es otro tipo de marino? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_otra_especie ; adivina_otro_marino).

adivina_otra_especie :-
    write('¿Tu personaje es un calamar? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_color_rosado ; adivina_otra_especie).

adivina_color_rosado :-
    write('¿Tu personaje es de color rosado? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_rareza_5(plankton) ; write('¡No se encontró el personaje!'), nl).

% Iniciar el juego
:- adivina_personaje.

