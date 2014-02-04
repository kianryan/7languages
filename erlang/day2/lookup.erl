-module(lookup).
-export([for_key/2]).
-export([total_price/1]).

for_key(List, Key) -> [ V || {K, V} <- List, K == Key].

total_price(List) -> [ {Item, Quantity * Price} || {Item, Quantity, Price} <- List ].
