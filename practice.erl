-module(practice).
-export([hello/0,right_age/1]).

hello() ->
	io:format("Hello world").

right_age(X) when X >= 16, X =< 104 ->
true;
right_age(X) when X < 16; X > 104 ->
true;
right_age(_) ->
false.

