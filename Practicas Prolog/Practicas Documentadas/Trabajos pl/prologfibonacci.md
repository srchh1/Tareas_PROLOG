# Secuencia Fibonacci en Prolog

## Descripción

Este código en Prolog implementa el cálculo de la secuencia de Fibonacci. Se define un predicado `fibonacci/2` que toma un número `N` como entrada y devuelve el término correspondiente de la secuencia de Fibonacci en `Y`.

## Implementación

```prolog
% Caso base: Fibonacci de 0 es 0
fibonacci(0, 0).

% Caso base: Fibonacci de 1 es 1
fibonacci(1, 1).

% Regla general para calcular Fibonacci
fibonacci(N, Y) :-
    N > 1,
    N1 is N - 1,
    fibonacci(N1, Y1),
    N2 is N - 2,
    fibonacci(N2, Y2),
    Y is Y1 + Y2.
