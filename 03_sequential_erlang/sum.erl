-module(sum).
-author("wembleyleach").
-export([sum/1, sum/2]).


sum(N) -> sum_acc(N, 0).

sum_acc(N, Acc) when N >= 1 -> sum_acc(N-1, Acc + N);
sum_acc(0, Acc) -> Acc.


sum(N, M) ->
  erlang:error(not_implemented).
