
module Main where
	toNum :: String -> Float
	toNum x = read (filterNum x) :: Float

	filterNum :: String -> String
	filterNum x = filter (\y -> elem y ('.' : ['1' .. '9'])) x

