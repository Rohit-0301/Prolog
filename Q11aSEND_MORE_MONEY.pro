predicates
	nondeterm digit(integer).
	nondeterm solve(integer,integer,integer,integer,integer,integer,integer,integer).
	nondeterm sum(integer,integer,integer,integer,integer,integer,integer,integer).

clauses
	digit(0).
	digit(1).
	digit(2).
	digit(3).
	digit(4).
	digit(5).
	digit(6).
	digit(7).
	digit(8).
	digit(9).
	solve(S,E,N,D,M,O,R,Y):-digit(S),S<>0,
				digit(E),E<>S,
				digit(N),N<>E,N<>S,
				digit(D),D<>N,D<>E,D<>S,
				digit(M),M<>D,M<>N,M<>E,M<>S,M<>0,
				digit(O),O<>M,O<>D,O<>N,O<>E,O<>S,
				digit(R),R<>O,R<>M,R<>D,R<>N,R<>E,R<>S,
				digit(Y),Y<>R,Y<>O,Y<>M,Y<>D,Y<>N,Y<>E,Y<>S,
				sum(S,E,N,D,M,O,R,Y).
	sum(S,E,N,D,M,O,R,Y):-	N1=1000*S+100*E+10*N+D,
				N2=1000*M+100*O+10*R+E,
				N3=10000*M+1000*O+100*N+10*E+Y,
				N3=N1+N2.

goal
	solve(S,E,N,D,M,O,R,Y).