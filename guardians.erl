%%%-------------------------------------------------------------------
%%% @author koziolek
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. wrz 2014 18:07
%%%-------------------------------------------------------------------
-module(guardians).
-author("koziolek").

%% API
-export([attack_mod/1]).

attack_mod({Unit_name, Number_of}) when Number_of >= 0, Unit_name /= elf ->
  attack_mod(Unit_name, Number_of).

attack_mod(marine, Number_of) ->
  2 * Number_of;

attack_mod(ork, Number_of) when Number_of < 20 ->
  1.3 * Number_of;

attack_mod(ork, Number_of) when Number_of >= 20 ->
  1.5 * Number_of * quarrel();

attack_mod(human, Number_of) ->
  1 * Number_of.

quarrel() ->
  Chns = random:uniform(10),
  if Chns == 1 -> 0;
    Chns > 1 -> 1
  end.