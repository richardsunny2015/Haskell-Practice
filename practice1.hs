module Practice1 where

firstExample = x * 3 + y where
    x = 3
    y = 1000

secondExample = x * 5 where
            x = 10 * 5 + y where
            y = 10

thirdExample = z / x + y where
           x = 7
           y = negate x
           z = y * 10

waxOn = x * 5 where
    x = y ^ 2 where
    y = z + 8 where
    z = 7

waxOff x = triple x

triple x = x * 3