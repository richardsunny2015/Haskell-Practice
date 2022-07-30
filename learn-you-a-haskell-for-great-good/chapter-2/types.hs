removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- type says that `addThree` takes 3 Int's and returns an Int
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- The difference between Integer and Int is that Int is bounded
-- to 64 bits while Integer is unbounded
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Floating point sinlge precision
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Floating point double precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r