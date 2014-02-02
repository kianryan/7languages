-module(count).
-export([out_loud/1]).
-export([count_words/1]).

out_loud(0) -> erlang:display("0");
out_loud(T) -> out_loud(T - 1) and erlang:display(T).

word_space(32) -> 1;
word_space(_) -> 0.

count_words([])			-> 1;
count_words([Head|Tail])	-> word_space(Head) + count_words(Tail).
