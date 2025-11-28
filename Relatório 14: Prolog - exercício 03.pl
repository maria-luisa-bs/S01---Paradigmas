irmaos_germanos(X, Y) :-
    progenitor(Pai, X),    
    progenitor(Pai, Y),      
    progenitor(Mae, X),     
    progenitor(Mae, Y), 
    
    Pai \= Mae,              
    X \= Y.                 


Y = Poseidon
Y = Hades
