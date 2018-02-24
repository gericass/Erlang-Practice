-module(erl_base_handler).

-export([init/2]).

init(Req, Opts) ->
	Req2 = cowboy_req:reply(200,[
				     {<<"content-type">>,<<"application/json">>}
				    ], <<"{'message':'hello world!'}">>,Req),
	{ok, Req2, Opts}.
