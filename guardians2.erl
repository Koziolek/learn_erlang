%%%-------------------------------------------------------------------
%%% @author koziolek
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. wrz 2014 21:06
%%%-------------------------------------------------------------------
-module(guardians2).
-author("koziolek").

%% API
-export([attack_mod/2]).


attack_mod(Unit_name, Number_of) when Number_of >= 0 ->
  Mod = case Unit_name of
          marine -> 2;
          ork when Number_of < 20 -> 1.3;
          ork when Number_of >= 20 ->
            1.5 * Number_of * quarrel();
          human -> 1
        end,
  Mod * Number_of.


quarrel() ->
  Chns = random:uniform(10),
  if Chns == 1 -> 0;
    Chns > 1 -> 1
  end.