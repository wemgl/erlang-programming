-module(shapes).
-export([area/1]).

% Function to calculate the area of a shape.
area({square, Size}) ->
  Size * Size;
area({circle, Radius}) ->
  math:pi() * Radius * Radius;
area({triangle, A, B, C}) ->
  S = (A + B + C) / 2,
  math:sqrt(S * (S - A) * (S - B) * (S - C));
area(_Other) ->
  {error, invalid_object}.

