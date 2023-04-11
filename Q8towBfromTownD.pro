%townB_from_townD

predicates
nondeterm connected(symbol,symbol,symbol)
bike_allowed(symbol)
nondeterm can_travel(symbol,symbol)

clauses
can_travel(Y,X):-connected(X,Y,Z),bike_allowed(Z).
can_travel(Y,X):-can_travel(Z,X),can_travel(Y,Z).
connected(a,b,r1).
connected(b,c,r2).
connected(a,c,r3).
connected(d,e,r4).
connected(d,b,r5).
bike_allowed(r3).
bike_allowed(r4).
bike_allowed(r5).

goal
can_travel(b,d).