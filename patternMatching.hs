lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck pal!"

sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Sorry, must input a number from 1 to 5."

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"
charName c = "Joe Schmo"

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
-- addVectors a b = (fst a + fst b, snd a + snd b) <- without pattern matching
addVectors (a1, a2) (b1, b2) = (a1 + b1, a2 + b2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

head' :: [a] -> a
head' [] = error "Can't call 'head' on empty list"
head' (x : _) = x

head'' :: [a] -> a
head'' xs = case xs of [] -> error "No head for empty lists!"
                       (x:_) -> x

tell :: (Show a) => [a] -> String 
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x
                                                                 ++ " and "
                                                                 ++ show y

badAdd :: (Num a) => [a] -> a
badAdd (x:y:z:[]) = x + y + z

betterAdd :: (Num a) => [a] -> a
betterAdd [] = 0
betterAdd xs@(x:_) = x + betterAdd (tail xs)

firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight, eat more!"
  | bmi <= 25.0 = "Looking good!"
  | bmi <= 30.0 = "You're overwight. Let's work out together!"
  | otherwise = "You're obese. Go see a doctor."

bmiTell' :: Double -> Double -> String
bmiTell' weight height
  | bmi <= 18.5 = "You're underweight, eat more!"
  | bmi <= 25.0 = "Looking good!"
  | bmi <= 30.0 = "You're overwight. Let's work out together!"
  | otherwise = "You're obese. Go see a doctor."
  where bmi = weight / height ^ 2

bmiTell'' :: Double -> Double -> String
bmiTell'' weight height
  | bmi <= skinny = "You're underweight, eat more!"
  | bmi <= normal = "Looking good!"
  | bmi <= overweight = "You're overwight. Let's work out together!"
  | otherwise = "You're obese. Go see a doctor."
  where bmi = weight / height ^ 2
        (skinny, normal, overweight) = (18.5, 25.0, 30.0)

max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b    = b
  | otherwise = a

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a == b    = EQ
  | a < b    = LT
  | otherwise = GT

niceGreeting :: String
niceGreeting = "Hello! So very nice to see you,"

badGreeting :: String
badGreeting = "oh! Pfft. It's you, "

greet :: String -> String
greet "Juan" = niceGreeting ++ " Juan!"
greet "Fernando" = niceGreeting ++ " Fernando!"
greet name = badGreeting ++ " " ++ name

initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

calcBmis' :: [(Double, Double)] -> [Double]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

calcBmis'' :: [(Double, Double)] -> [Double]
calcBmis'' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi > 25.0]

cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

describeList :: [a] -> String
describeList ls = "The list is " ++ case ls of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."

describeList' :: [a] -> String
describeList' ls = "The list is " ++ what ls
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."
