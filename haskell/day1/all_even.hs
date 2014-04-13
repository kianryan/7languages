module Main where
-- Pattern Matching
	allEven :: [Integer] -> [Integer]
	allEven [] = []
	allEven (h:t) = if even h then h:allEven t else allEven t

-- List Comprehension
	allEvenGuard :: [Integer] -> [Integer]
	allEvenGuard x = [y | y <- x, even y]

-- Folding
	allEvenFold :: [Integer] -> [Integer]
	allEvenFold x = foldr(\y ys -> if even y then y:ys else ys) [] x

-- Filter
	allEvenFilter :: [Integer] -> [Integer]
	allEvenFilter x = filter even x
