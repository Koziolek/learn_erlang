%%%-------------------------------------------------------------------
%%% @author koziolek
%%% @copyright (C) 2014, <COMPANY>
%%% @doc  few simple exercises with lists
%%%
%%% @end
%%% Created : 15. wrz 2014 22:22
%%%-------------------------------------------------------------------
-module(mylists).
-author("koziolek").

%% API
-export([simpleList/0]).

simpleList() ->
  L = [1, 2, 3],
  lists:foreach(io:format("So what ~p ~n", [L]) , L).

