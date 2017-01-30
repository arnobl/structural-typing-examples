-module(duck).
-export([main/0]).

% Variables start with uppercase letter. The lowercase words are atoms and can be pattern-matched.
main() ->
    TheWolf = wolf,
    TheDuck = TheWolf,
    ADuck = mallard,

    twoDucksAlone(ADuck, TheDuck),

    io:fwrite(eat(TheWolf, ADuck)).

eat(wolf, _) -> unicode:characters_to_binary(" 😈 ~n").

quack(wolf) -> "QUACK QUACK WHOO~n";
quack(mallard) -> "quack quack~n".

dance(wolf) -> unicode:characters_to_binary(" ¯\\_()_/¯ ~n");
dance(mallard) -> unicode:characters_to_binary(" _/¯ ~n").

twoDucksAlone(D1, D2) ->
    io:fwrite(quack(D1)),
    io:fwrite(quack(D2)),
    io:fwrite(dance(D1)),
    io:fwrite(dance(D2)).

