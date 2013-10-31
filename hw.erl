%% file_comment

-module(hw).

%% ====================================================================
%% API functions
%% ====================================================================
-export([create369/0,
 		 remove_char/0,
		 remove_char1/0
		]).



%% ====================================================================
%% Internal functions
%% ====================================================================


create369()->
	A=[1,2,3,4,5,6,7,8,9],
	create369(A, []).

create369([First | Rest], B) when First rem 3 == 0 ->
	create369(Rest, [First | B]);
create369([_ | Rest], B) ->
	create369(Rest, B);
create369([], B) ->
 	lists:reverse(B).

%% ==========================================
remove_char() ->
	A = [1, hello, 100, boo,"boo",9],
	remove_char(A, []).

 remove_char([], B) ->
	lists:reverse(B);
remove_char([First | Rest], B) ->
	if
		is_integer(First) == true ->
			remove_char(Rest, [First | B]);
		true ->
			remove_char(Rest, B)
	end.

%% 22222222222222222222222222
remove_char1() ->
	A = [1, hello, 100, boo,"boo",9],
	lists:filter(fun(E) -> 
						  is_integer(E) end,
						  A).


%% =============================================



