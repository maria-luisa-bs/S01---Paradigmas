ancestral(A,D):-
    progenitor(A,D).

ancestral(A,D):-
    progenitor(A,Z),
    ancestral(Z,D)
 .

ancestral(uranus,Descendente)

Descendente = Cronos
Descendente = Oceano
Descendente = Zeus
Descendente = Poseidon
Descendente = Hades
Descendente = Ares
Descendente = Hefesto
Descendente = Atena
Descendente = Apolo
Descendente = Artemis
Descendente = Perseu
Descendente = Erictônio
Descendente = Tritao
