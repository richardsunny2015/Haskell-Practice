someTuple = (1, 3)

someTriple = ("Dio", "Brando", 100)

-- You cannot make a singlular tuple. Their
-- fixed size does not make sense to have a single
-- value since any properties of that tuple would
-- be just from that single value.

-- You can do `fst` only with pairs. Got an error
-- when trying to use it on a triple.
firstOfSomeTuple = fst someTuple
secondOfSomeTuple = snd someTuple

zippedList = zip [1..5] (replicate 5 5)
-- [(1,5),(2,5),(3,5),(4,5),(5,5)]

zippedDifferentSizes = zip [1..10] ["im", "a", "turtle"]
-- [(1,"im"),(2,"a"),(3,"turtle")]

-- list comprehension
-- first part is what each element will look like.
-- second part is the definition of the variables in 
-- the first part.
-- third part (not shown) is a predicate of what values are
-- allowed.
-- the value in this particular case is all combinations
-- of every element in each list giving a total of 1000 triples.
triples = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10]]

rightTriangles = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2]
-- [(4,3,5),(8,6,10)]

theRightTriangle = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a + b + c == 24]