-module(utf8_list).

-export([list_to_binary/1, binary_to_list/1]).

list_to_binary(List) ->
  unicode:characters_to_binary(List).

binary_to_list(InfoBin) ->
  unicode:characters_to_list(InfoBin, utf8).