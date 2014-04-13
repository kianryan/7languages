
module Main where
	third x = x : third (x + 3)
	
	fifth x = x : fifth (x + 5)

	eighth x = zipWith (+) (third x) (fifth x)

	-- reverses arguments of divide operator
	-- then creates a partial function to
	-- return half.
	divide x y = y / x
	half = divide 2

	-- Alternative
	halfCurry = (/ 2)

	newline = (++ "\n")
