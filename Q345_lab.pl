last([X],X).
last([_|T],X):-last(T,X).

del_first(_,[],[]).
del_first(X,[X|T],T):-!.
del_first(X,[H|T],[H|R]):-del_first(X,T,R).

del_all(_,[],[]).
del_all(X,[X|T],R):-del_all(X,T,R).
del_all(X,[H|T],[H|R]):-del_all(X,T,R).

union([],L,L).
union([H|T],L,U):- member(H,L),union(T,L,U).
union([H|T],L,[H|U]):- \+member(H,L),union(T,L,U).

intersection([],_,[]).
intersection([H|T],L,[H|I]):- member(H,L),intersection(T,L,I).
intersection([H|T],L,I):- \+member(H,L),intersection(T,L,I).
