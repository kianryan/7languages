
module Main where
	quicksort _ [] = []
	quicksort f (h:t) = quicksort f [x | x <- t, f h x == False] 
			++ [h]
			++ quicksort f [x | x <- t, f h x == True]

