-module(bool).
-export([b_not/1, b_and/2, b_or/2, b_nand/2]).

b_not(P) ->
  P =/= true.

b_and(P, Q) ->
  {true, true} == {P, Q}.

b_or(P, Q) ->
  b_not({false, false} == {P, Q}).

b_nand(P, Q) ->
  b_not(b_and(P, Q)).

