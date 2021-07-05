module Demo where
import Debug.Trace

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

quicksort :: (Ord a, Show a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = trace ("Smaller: " ++ show (x:xs)) quicksort [a | a <- xs, a <= x] 
        biggerSorted = trace ("Bigger: " ++ show (x:xs)) quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted  

multiplyFunction :: Int -> Int -> Int -> Int
multiplyFunction x y z = x * y * z

multFunc :: Int -> Int -> Int
multFunc = multiplyFunction 10 

divideTen :: (Floating a) => a -> a
divideTen = (/10)

isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])

multThree :: (Num a) => a -> a -> a -> a  
multThree x y z = x * y * z  

multTwoWithNine :: Int -> Int -> Int
multTwoWithNine = multThree 9

someFunction :: Int -> Int -> Int -> Int -> Int
someFunction x y z c = x * y * z * c

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
  where g x y = f y x

flip'' :: (a -> b -> c) -> b -> a -> c
flip'' f y x = f x y

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
  | even n = n:chain (n `div` 2)
  | odd n = n:chain (n*3 + 1)

flip''' :: (a -> b -> c) -> (b -> a -> c)
flip''' f = \x y -> f y x

func''' :: Int -> Int -> Int
func''' x y = x + y

func'' :: Int -> Int -> Int -> Int
func'' x = \y z -> x + y + z

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

elem'' :: (Eq a) => a -> [a] -> Bool
elem'' y ys = foldl (\acc x -> if x == y then True else acc) False ys

reverse'' :: [a] -> [a]
reverse'' = foldl (\acc x -> x :  acc) []

reverse''' :: [a] -> [a]
reverse''' = foldl (flip (:)) []

product'' :: (Num a) => [a] -> a
product'' = foldl (*) 1

filter' :: (a -> Bool) -> [a] -> [a]  
filter' p = foldr (\x acc -> if p x then x : acc else acc) []  

foldl''' :: (a -> b -> a) -> a -> [b] -> a
foldl''' _ acc []     = acc
foldl''' f acc (x:xs) = foldl f (f acc x) xs
 
foldr''' :: (a -> b -> b) -> b -> [a] -> b
foldr''' _ acc []     = acc
foldr''' f acc (x:xs) = f x (foldr f acc xs)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

someFunction'' :: (Int -> Int -> Int) -> [Int] -> [Int]
someFunction'' f = don
  where don [] = []
        don (x:xs) = f x 2 : don xs

and'' :: [Bool] -> Bool
and'' xs = foldr (&&) True xs

sqrtSums :: Int  
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1  
oddSquareSum :: Integer  
oddSquareSum =   
    let oddSquares = filter odd $ map (^2) [1..]  
        belowLimit = takeWhile (<10000) oddSquares  
    in  sum belowLimit  
