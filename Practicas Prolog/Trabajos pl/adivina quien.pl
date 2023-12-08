% Definición de personajes de Bob Esponja
personaje(Lara Croft).
personaje(Hank).
personaje(Sefear).
personaje(Bill).

% Reglas para hacer preguntas y adivinar el personaje
adivina_personaje :-
    write('¿Tu personaje es mujer? (s/n): '),
    read(Resp1),
    (Resp1 = 's' -> adivina_1 ; adivina_c).

adivina_1 :-
    write('¿Tu personaje es una aventurera en busca de la accion? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_2 ; adivina_3).

adivina_2 :-
    write('¿Tu personaje es amigo de Lara Croft? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_rareza_4(Hank) ; adivina_rareza_5).

adivina_rareza_4(Personaje) :-
    write('¿Tu personaje es de rareza 4? (s/n): '),
    read(Resp),
    (Resp = 's' -> personaje(Personaje), write('¡Tu personaje es '), write(Personaje), nl ; write('¡No se encontró el personaje!'), nl).

adivina_rareza_5 :-
    write('¿Tu personaje es de rareza 5? (s/n): '),
    read(Resp),
    (Resp = 's' -> write('¡No se encontró el personaje!'), nl ; write('¡No se encontró el personaje!'), nl).

adivina_3 :-
    write('¿Tu personaje es otro tipo de Aventurero? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_4 ; adivina_3).

adivina_4 :-
    write('¿Tu personaje es un Tracionero? (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_5 ; adivina_4).

adivina_5 :-
    write('¿Tu personaje es hombre (s/n): '),
    read(Resp),
    (Resp = 's' -> adivina_rareza_5(plankton) ; write('¡No se encontró el personaje!'), nl).

% Iniciar el juego
:- adivina_personaje.

