module TypeInference2 where

f x y = x + y + 3

triple x = tripleItYo x
    where tripleItYo :: Integer -> Integer
          tripleItYo y = y * 3

