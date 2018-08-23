module FunctionWithLet where

printInc n = let plusTwo = n + 2
            in print plusTwo

mult1       = x * y
    where x = 5
          y = 6