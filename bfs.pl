
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).
edge(d, h).
edge(e, i).


bfs(Start, Goal, Path) :-
    bfs_queue([(Start, [])], Goal, PathRev),
    reverse(PathRev, Path).


bfs_queue([(Goal, Path)|_], Goal, [Goal|Path]).
bfs_queue([(Node, Path)|Rest], Goal, PathResult) :-
    findall((Child, [Child|Path]),
            (edge(Node, Child), \+ member(Child, Path)),
            Children),
    append(Rest, Children, NewQueue),
    bfs_queue(NewQueue, Goal, PathResult).
bfs_queue([_|Rest], Goal, PathResult) :-
    bfs_queue(Rest, Goal, PathResult).

