-module (p006).
-export ([solve/0]).

%%Sum of i where i from 1 to n = n * (n+1)/2 = 5050
%%Sum of 1^2 where i from 1 to n = n(n+1)(2n+1)/6 = 338350
%%Result = 5050^2 - 338350 = 25164150

solve() ->
    N = 100,
    S1 = N * (N+1) / 2,
    S2 = N * (N+1) * (2*N+1) / 6,
    S = (S1*S1) - S2,
    S.