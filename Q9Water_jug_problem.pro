database
visited(integer,integer)
predicates
nondeterm state(integer,integer)

clauses
state(2,0).
state(0,0):-not(visited(0,0)),assert(visited(0,0)),state(0,0).
state(X,Y):-X<4, not(visited(4,Y)),assert(visited(4,Y)),write("\nRule 1 => (4,",Y,")"),state(4,Y).
state(X,Y):- Y<3, not(visited(X,3)), assert(visited(X,3)),write("\nRule 2 => (",X,",3)"), state(X,3).
state(X,Y):- X>0, not(visited(0,Y)),assert(visited(0,Y)), write("\nRule 3 => (0,",Y,")"),state(0,Y).
state(X,Y):- Y>0, not(visited(X,0)),assert(visited(X,0)), write("\nRule 4 => (",X,"0)"),state(X,0).
state(X,Y):- X+Y>=4,Y>0,Z=Y-(4-X), not(visited(4,Z)),assert(visited(4,Z)), write("\nRule 5 => (4,",Z,")"),state(4,Z).
state(X,Y):- X+Y>=3,X>0,Z=X-(3-Y), not(visited(Z,3)),assert(visited(Z,3)), write("\nRule 6 => (",Z,",3)"),state(Z,3).
state(X,Y):- X+Y<=4,Y>0,Z=X+Y, not(visited(Z,0)),assert(visited(Z,0)), write("\nRule 7 => (",Y,",0)"),state(Z,0).
state(X,Y):- X+Y<=3,X>0,Z=X+Y, not(visited(0,Z)),assert(visited(0,Z)), write("\nRule 8 => (0,",Z,")"),state(0,Z).
state(X,Y):- X=0,Y=2, not(visited(2,0)),assert(visited(2,0)), write("\nRule 9 => (2,0)"),state(2,0).
state(X,Y):- X=2,assert(visited(0,Y)), write("\nRule 10 => (0,",Y,")"),state(0,Y).

goal
write("Initially state(0,0)"), state(0,0).