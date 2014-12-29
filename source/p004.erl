-module (p004).
-export ([run/0]).

%%Correct: 906609

run() ->
    Candidates = [X*Y || X <- lists:seq(100, 999), Y <- lists:seq(100, 999), is_palindrome(X*Y)],
    lists:max(Candidates).

is_palindrome(N) ->
    Rev = list_to_integer(lists:reverse(integer_to_list(N))),
    Rev == N.