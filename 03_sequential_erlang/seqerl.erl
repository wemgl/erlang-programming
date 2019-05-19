-module(seqerl).
-author("wembleyleach").
-export([sum/1, sum/2, create/1, reverse_create/1]).


sum(N) -> sum_acc(N, 0).

sum_acc(N, Acc) when N >= 1 -> sum_acc(N - 1, Acc + N);
sum_acc(0, Acc) -> Acc.


sum(N, M) when is_integer(N) and is_integer(M) ->
  try sum_acc(N, M, 0)
  catch
    throw:Throw -> {throw, Throw}
  end.


sum_acc(N, M, _) when N > M -> throw("N must be less than or equal to M");
sum_acc(N, M, Acc) when N == M -> N + Acc;
sum_acc(N, M, Acc) when N =< M -> sum_acc(N + 1, M, N + Acc).

create(N) when is_integer(N) -> create_acc(N, []).

create_acc(0, Acc) -> Acc;
create_acc(N, Acc) -> create_acc(N - 1, [N|Acc]).

reverse_create(N) when is_integer(N) -> reverse_create_acc(N, []).

reverse_create_acc(0, Acc) -> lists:reverse(Acc);
reverse_create_acc(N, Acc) -> reverse_create_acc(N - 1, [N|Acc]).
