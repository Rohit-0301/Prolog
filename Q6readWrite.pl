read_list(List) :-
    read(List).

write_list(List) :-
    write(List).

main :-
    read_list(List),
    write_list(List).
