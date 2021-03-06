-module (p097).
-export ([solve/0]).
-import (my_math, [pow/2]).

solve() ->
	(28433*iterate_last_digits(1,2,7830457,10)+1) rem pow(10,10).

iterate_last_digits(Number,_ ,0 , _) ->
	Number;
iterate_last_digits(Number, Base, Exp, Digits) ->
	iterate_last_digits((Base * Number) rem pow(10, Digits), Base, Exp - 1, Digits).

