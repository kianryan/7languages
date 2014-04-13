module Main where
	reverse_list :: [Integer] -> [Integer]
	reverse_list (h:t) = reverse_list t ++ [h] 
	reverse_list [] = []

