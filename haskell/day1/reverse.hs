module Main where
	reverse :: [Integer] -> [Integer]
	reverse (h : t) = reverse t : h
