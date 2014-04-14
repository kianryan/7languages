
-- Define a node and a maze as a collection of nodes
module Main where
	-- position and exits
	data Node pos = Node pos [pos]  deriving Show
	-- a maze is simply a collection of nodes
	data Maze node = Maze [Node node] deriving Show

	find_node maze pos = 
