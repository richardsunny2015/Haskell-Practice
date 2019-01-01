module ChapterTwo where

fact 0 = 1
fact 1 = 1
fact n
    | n < 0     = -1
    | otherwise = n * fact (n - 1)

f l = reverse (f' l [])
    where f' [] r = r
          f' (x:xs) r = (2 * x) : (f' xs r)

averageList [] = error "Can't find average of an empty list"
averageList list = (sum list) `div` (length list)

middleElem [] = error "Cannot find middle element of an empty list"
middleElem list = list !! ((length list - 1) `div` 2)

-- neg [] = 0
-- neg (x:xs)
    -- | x < 0     = 1 + neg xs
    -- | otherwise = neg xs
neg list = length [x | x <- list, x < 0]

