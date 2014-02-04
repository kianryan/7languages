-module(tictactoe).
-export([win/1]).

%--  Win condition - on the horizontals 
%--  Win condition -> on the verticals
%-- Win condition -> on the diagonals
win([X, _, _, X, _, _, X, _, _]) -> X;
win([_, X, _, _, X, _, _, X, _]) -> X;
win([_, _, X, _, _, X, _, _, X]) -> X;
win([X, X, X, _, _, _, _, _, _]) -> X;
win([_, _, _, X, X, X, _, _, _]) -> X;
win([_, _, _, _, _, _, X, X, X]) -> X;
win([X, _, _, _, X, _, _, _, X]) -> X;
win([_, _, X, _, X, _, X, _, _]) -> X;

win(T) -> case lists:all(fun(X) -> (X == o) or (X == x) end, T) of
		  true -> cat;
		  false -> no_winner
	  end.

%-- Stalemate - no more possible moves
%-- Default - more moves
