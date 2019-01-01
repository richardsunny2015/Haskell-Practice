module ChapterTwo where

fact 0 = 1
fact 1 = 1
fact n
    | n < 0     = -1
    | otherwise = n * fact (n - 1)

f l = reverse (f' l [])
    where f' [] r = r
          f' (x:xs) r = (2 * x) : (f' xs r)