delete_first_occurence(_,[],[]).
delete_first_occurence(X,[X|T],T):-!.
delete_first_occurence(X,[H|T],[H|R]):- delete_first_occurence(X,T,R).

