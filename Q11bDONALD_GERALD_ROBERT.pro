predicates
	nondeterm digit(integer).
	nondeterm solve(integer,integer,integer,integer,integer,integer,integer,integer,integer,integer).
	nondeterm sum(integer,integer,integer,integer,integer,integer,integer,integer,integer,integer).

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
	solve(D,O,N,A,L,G,E,R,B,T):-	digit(D),D<>0,
					digit(O),O<>D,
					digit(N),N<>O,N<>D,
					digit(A),A<>N,A<>O,A<>D,
					digit(L),L<>A,L<>N,L<>O,L<>D,
					digit(G),G<>L,G<>A,G<>N,G<>O,G<>D,G<>0,
					digit(E),E<>G,E<>L,E<>A,E<>N,E<>O,E<>D,
					digit(R),R<>E,R<>G,R<>L,R<>A,R<>N,R<>O,R<>D,R<>0,
					digit(B),B<>R,B<>E,B<>G,B<>L,B<>A,B<>N,B<>O,B<>D,
					digit(T),T<>B,T<>R,T<>E,T<>G,T<>L,T<>A,T<>N,T<>O,T<>D,
					sum(D,O,N,A,L,G,E,R,B,T).
	sum(D,O,N,A,L,G,E,R,B,T):-	N1=100000*D+10000*O+1000*N+100*A+10*L+D,
					N2=100000*G+10000*E+1000*R+100*A+10*L+D,
					N3=100000*R+10000*O+1000*B+100*E+10*R+T,
					N3=N1+N2.

goal
	solve(D,O,N,A,L,G,E,R,B,T).