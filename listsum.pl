list_sum([],0,0).
list_sum([X|T],S,N):-list_sum(T,S1,N1), S is S1+X, N is N1+1.
