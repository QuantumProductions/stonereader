-module(board).
-compile(export_all).
-include_lib("eunit/include/eunit.hrl").

corner_directions_test() ->
  P41 = {4, 1},
  {5, 1} = next(P41, e),
  {5, 2} = next(P41, se),
  {3, 2} = next(P41, sw),
  {5, 0} = next(P41, ne),
  {3, 0} = next(P41, nw),
  {3, 1} = next(P41, w).

next({X, Y}, e) -> {X + 1, Y};
next({X, Y}, se) -> {X + 1, Y + 1};
next({X, Y}, sw) -> {X - 1, Y + 1};
next({X, Y}, w) -> {X - 1, Y};
next({X, Y}, nw) -> {X - 1, Y - 1};
next({X, Y}, ne) -> {X + 1, Y - 1}.
