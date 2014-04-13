-- Produces a list of unique combinations

module Main where
	combo x = [(a, b) | a <- x, b <- x, a < b]
