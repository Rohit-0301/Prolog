female(jaya).
female(shweta).
female(ritu).
female(nidhi).

male(amit).
male(abhi).
male(ajit).
male(satish).

parent(amit,shweta).
parent(amit,abhi).
parent(jaya,abhi).
parent(abhi,ajit).
parent(abhi,ritu).
parent(abhi,nidhi).
parent(nidhi,satish).
parent(ajit,satish).

mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
haschild(X):-parent(X,_).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.

grandparent(X,Y):-parent(X,Z),parent(Z,Y).
grandmother(X,Z):-mother(X,Y),parent(Y,Z).
grandfather(X,Z):-father(X,Y),parent(Y,Z).
wife(X,Y):-parent(X,Z),parent(Y,Z),female(X),male(Y).
uncle(X,Z):-brother(X,Y),parent(Y,Z).
