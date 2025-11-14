-module(safe_atom).

-export([list_to_atom/1, binary_to_atom/1, binary_to_term/1]).

list_to_atom(List) when is_list(List) ->
    try list_to_existing_atom(List) of
        Atom when is_atom(Atom) ->
            Atom
    catch
        _:_Reason ->
            erlang:list_to_atom(List)
    end.

binary_to_atom(Bin) when is_binary(Bin) ->
    try binary_to_existing_atom(Bin) of
        Atom when is_atom(Atom) ->
            Atom
    catch
        _:_Reason ->
            erlang:binary_to_atom(Bin, utf8)
    end.

binary_to_term(Bin) ->
    erlang:binary_to_term(Bin, [safe]).
