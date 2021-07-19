-module(safe_atom).

-export([list_to_atom/1, binary_to_atom/1, binary_to_term/1]).

list_to_atom(List) when is_list(List) ->
  case catch list_to_existing_atom(List) of
    {'EXIT', _} ->
      erlang:list_to_atom(List);
    Atom when is_atom(Atom) ->
      Atom
  end.

binary_to_atom(Bin) when is_binary(Bin) ->
  case catch binary_to_existing_atom(Bin) of
    {'EXIT', _} ->
      erlang:binary_to_atom(Bin);
    Atom when is_atom(Atom) ->
      Atom
  end.

binary_to_term (Bin) ->
  erlang:binary_to_term (Bin, [safe]).
