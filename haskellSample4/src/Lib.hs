module Lib
    ( someFunc
    ) where

import Debug.Trace
someFunc :: IO ()
someFunc = print $ quicksort [5,1,9,4,6,7,3]

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a,b,c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

capital :: String -> String  
capital "" = "Empty string, whoops!"  
capital array@(x:xs) = "The first letter of " ++ array ++ " is " ++ [x] 
func :: Int -> (String, Int)
func a
  | a > 100 = ("Your variable greater then 100: ", a)
  | a == 0 = ("Your variable is equal to zero: ", a)
  | a <= 100 = ("Yur variable lower then 100: ", a) 

myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT  

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny = "You're underweight, you emo, you!"  
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"  
    | otherwise     = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  
          skinny = 18.5
          normal = 25.0
          fat = 30.0

badGreeting :: String
badGreeting = "Ow, damn, its you,"

niceGreeting :: String
niceGreeting = "Hi! Nice to see you,"

greet :: String -> String
greet "Huan" = niceGreeting ++ " Huan!"
greet "Fernando" = niceGreeting ++ " Fernando!"
greet name = badGreeting ++ " " ++ name

calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]  

describeList :: [a] -> String  
describeList xs = "The list is " ++ case xs of [] -> "empty."  
                                               [x] -> "a singleton list."   
                                               xs -> "a longer list."  

describeList' :: [a] -> String  
describeList' xs = "The list is " ++ za xs ++ "shit"
    where za [] = "empty."  
          za [x] = "a singleton list."  
          za xs = "a longer list."  

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum in empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate' :: Int -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x : replicate' (n-1) x

take' :: Int -> [a] -> [a]
take' n xs
  | n <= 0 = []
  | null xs = []
  | otherwise = head xs : take' (n-1) (tail xs) 

reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]  

quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = trace (unwords ["Smallersorted"]) quicksort [a | a <- xs, a <= x] 
        biggerSorted = trace (unwords ["Biggersorted"]) quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted 