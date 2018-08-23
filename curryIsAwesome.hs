module CurryIsAwesome where

curryStr = "Curry is awesome!"

returnFour x = x !! 4

dropNine x = drop 9 x

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = curryStr !! x

rvrs :: String -> String
rvrs x = (dropNine x) ++ " " ++ ((letterIndex 6) : []) ++ ((letterIndex 7) : []) ++ " " ++ (take 5 x)