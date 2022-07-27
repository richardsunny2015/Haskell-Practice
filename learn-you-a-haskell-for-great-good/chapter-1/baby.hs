doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

inc :: Num a => a -> a
inc x = x + 1

-- Not sure what the type is for this. Extension gives me:
-- doubleSmallNumber :: (Ord a, Num a) => a -> a
-- but I don't know what it means.
-- TODO, understand and uncomment
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

-- `hello` is not a variable. `hello` is a function that returns
-- that string. AFAIK all variables are functions.
-- Also note, hello returns a string which is actually a list of
-- characters.
hello :: [Char]
hello = "This is a normal greeting."