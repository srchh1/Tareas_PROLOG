# Código en Prolog para calcular el factorial de un número

## Predicados

### `fact/2`

```prolog
fact(0, 1).
fact(N, M) :- N > 0, N1 is N - 1, fact(N1, M1), M is M1 * N.

% Cuando aparece el false, son por los espacios que está buscando todas las posibilidades.
% Para poder debugear se utiliza la función trace().
