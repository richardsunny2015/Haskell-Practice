module TypeInference2 where

f x y = x + y + 3

triple x = tripleItYo x
    where tripleItYo :: Integer -> Integer
          tripleItYo y = y * 3

functionC :: Integer -> Integer -> Bool
functionC x y = if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y