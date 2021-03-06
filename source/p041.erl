-module (p041).
-export ([solve/0]).
-import (helper, [to_digits/1, assemble_number/1, permute/1]).

solve() ->
    find_below(9).

find_below(Limit) ->
    prime_server:start_link(200000),
    L = lists:seq(1,Limit),
    Candidates = permute(L),
    Numbers = lists:map(fun(X) -> assemble_number(X) end, Candidates),
    Primes = prime_server:filter_primes(Numbers),
    Length = length(Primes),
    Ans = if
            Length > 0 -> 
                lists:max(lists:filter(fun(X) -> is_pan_digital(X) end, Primes));
            Length == 0 ->
                find_below(Limit-1)
        end,
    prime_server:stop(),
    Ans.

is_pan_digital(N) ->
    Ns = to_digits(N),
    Length = length(Ns),
    lists:usort(Ns) == lists:seq(1,Length).