-module(translate_monitor).
-behaviour(supervisor).
-export([start/1]).
-export([init/1]).
-export([loop/1]).

start([]) ->
	io:format("Starting ~n"),
	Pid = spawn_link(translate_monitor, loop, []),
	{ok, Pid}.

init([]) -> 
	{ok, {{one_for_one, 1, 60},
		[{translate_monitor, {translate_monitor, start, []},
		 permanent, brutal_kill, worker, [translate_monitor]}]}}.

loop(Term) ->
	case Term of
		"casa" ->
			io:format("house~n"),
			loop([]);
		"blanca" ->
			io:format("white~n"),
			loop([]);
		_ ->
			io:format("I don't understand.~n"),
			loop([])
	end.
