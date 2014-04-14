
module Main where
	data Hash key value = Children key [Hash key value] | Node key value deriving Show

	find :: Eq a => Hash a b -> a -> Maybe b
	find (Node key value) test
		| key == test 	= Just value
		| otherwise 	= Nothing
