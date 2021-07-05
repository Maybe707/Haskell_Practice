module Main where

import Data.List (break)
import Data.List (all)
import Control.Monad.Fail
import Control.Monad.Error
import Control.Monad.Trans.Error
import Control.Monad.Trans.Except
import Control.Monad.State
import System.Random
import Control.Monad
import Data.Monoid
import Control.Monad.Writer
import qualified Data.ByteString.Lazy as B
import Data.Ratio

type Birds = Int
type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left,right)
  | abs ((left + n) - right) < 4 = Just (left + n, right)
  | otherwise = Nothing
  
landRight :: Birds -> Pole -> Maybe Pole
landRight n (left,right)
  | abs (left - (right + n)) < 4 = Just (left, right + n)
  | otherwise = Nothing

banana :: Pole -> Maybe Pole
banana _ = Nothing

x -: f = f x

routine :: Maybe Pole
routine = case landLeft 1 (0, 0) of
  Nothing -> Nothing
  Just pole1 -> case landRight 44 pole1 of
    Nothing -> Nothing
    Just pole2 -> case landLeft 2 pole2 of
      Nothing -> Nothing
      Just pole3 -> landLeft 1 pole3

applyMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
applyMaybe Nothing f = Nothing
applyMaybe (Just x) f = f x

foo :: Maybe String
foo = Just 3 >>= (\x ->
      Just "!" >>= (\y ->
      Just (show x ++ y)))

foo' :: Maybe String
foo' = do
  x <- Just 3
  y <- Just "!"
  Just (show x ++ y)

marySue :: Maybe Bool
marySue = do
  x <- Just 9
  Just (x > 8)

routine' :: Maybe Pole
routine' = do
  start <- return (0, 0)
  first <- landLeft 2 start
  second <- landRight 2 first
  landLeft 1 second

routine'' :: Maybe Pole
routine'' = do
  start <- return (0, 0)
  first <- landLeft 2 start
  Nothing
  second <- landRight 2 first
  landLeft 1 second

justFirst :: Maybe Char
justFirst = do
  (x:xs) <- Just "hello"
  return x

--fail :: (Monad m) => String -> m a
--fail msg = error msg

wopwop :: Maybe Char
wopwop = do
  (x:xs) <- Just ""
  z <- Just 'a'
  return z

func''' :: Maybe Int
func''' = do
  (Just 10)

listOfTuples :: [(Int,Char)]
listOfTuples = do
  n <- [1,2]
  ch <- ['a','b']
  return (n,ch)

sevensOnly :: [Int]
sevensOnly = do
  x <- [1..50]
  guard ('7' `elem` show x)
  return x
type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c,r) = do
  (c',r') <- [(c+2,r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
             ,(c+1,r-2),(c+1,r+2),(c-1,r-2),(c-1,r+2)
             ]
  guard (c' `elem` [1..8] && r' `elem` [1..8])
  return (c',r')

moveKnight' :: KnightPos -> [KnightPos]
moveKnight' (c,r) = filter onBoard
  [(c+2,r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
  ,(c+1,r-2),(c+1,r+2),(c-1,r-2),(c-1,r+2)
  ]
  where onBoard (c,r) = c `elem` [1..8] && r `elem` [1..8]

in3 :: KnightPos -> [KnightPos]
in3 start = do
  first <- moveKnight start
  second <- moveKnight first
  moveKnight second

in3' :: KnightPos -> [KnightPos]
in3' start = return start >>= moveKnight >>= moveKnight >>= moveKnight

canReachIn3 :: KnightPos -> KnightPos -> Int -> Int
canReachIn3 start end count = (\c -> if end `elem` c then (count+1) else canReachIn3' c end (count+1)) (return start >>= moveKnight)

canReachIn3' :: [KnightPos] -> KnightPos -> Int -> Int
canReachIn3' start end count = (\c -> if end `elem` c then (count+1) else canReachIn3' c end (count+1)) (start >>= moveKnight)
  
describeList :: [a] -> String
describeList xs = "List " ++
  case xs of
    [] -> "Empty."
    [x] -> "One-elemented." ++ "sdfsdf"
    xs -> "Long."

someFunc :: Int -> Maybe Int
someFunc x = Just (x + 10)

class Cyborg f where
  newFunction :: f a -> f a

instance Cyborg ((->) r) where
  newFunction x y = x y

robotFunc :: Int -> Int -> Int -> Int
robotFunc x y = (\c -> x + y + c)

isBigGang :: Int -> (Bool, String)
isBigGang x = (x > 9, "Band size has been compared to 9.")

applyLog :: (a,String) -> (a -> (b,String)) -> (b,String)
applyLog (x,log) f = let (y,newLog) = f x in (y,log ++ newLog)

applyLog' :: (Monoid m) => (a,m) -> (a -> (b,m)) -> (b,m)
applyLog' (x,log) f = let (y,newLog) = f x
                     in (y,log `mappend` newLog)

type Food = String
type Price = Sum Int

addDrink :: Food -> (Food,Price)  
addDrink "beans" = ("milk", Sum 25)  
addDrink "jerky" = ("whiskey", Sum 99)  
addDrink _ = ("beer", Sum 30)  

logNumber :: Int -> Writer [String] Int  
logNumber x = writer (x, ["Got number: " ++ show x])
  
multWithLog :: Writer [String] Int  
multWithLog = do  
    a <- logNumber 3  
    b <- logNumber 5  
    return (a+b)

multWithLog' :: Writer [String] Int
multWithLog' = do
  a <- logNumber 3
  b <- logNumber 5
  tell ["Some more sheety stuff"]
  return (a*b)

recFunc :: (a,b) -> Int
recFunc = (+3) . recFunc2

recFunc2 :: (a,b) -> Int
recFunc2 = recFunc

data Construct w = DataConst w Int

function3' :: Construct w -> Bool
function3' (DataConst x y) = True

gcd' :: Int -> Int -> Int  
gcd' a b   
    | b == 0    = a  
    | otherwise = gcd' b (a `mod` b)  

gcd'' :: Int -> Int -> Writer [String] Int
gcd'' a b
  | b == 0 = do
      tell ["Finished: " ++ show a]
      return a
  | otherwise = do
      tell [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
      gcd'' b (a `mod` b)

gcdReverse :: Int -> Int -> Writer [String] Int
gcdReverse a b
  | b == 0 = do
      tell ["Закончили: " ++ show a]
      return a
  | otherwise = do
      result <- gcdReverse b (a `mod` b)
      tell [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
      return result

gcdReverse' :: Int -> Int -> Writer [String] Int
gcdReverse' a b
  | b == 0 = do
      tell ["Закончили: " ++ show a]
      return a
  | otherwise = do
      gcdReverse b (a `mod` b)
      tell [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
      return (a `mod` b)

gcdReverse'' :: Int -> Int -> Writer (DiffList String) Int
gcdReverse'' a b
  | b == 0 = do
      tell (toDiffList ["Finished: " ++ show a])
      return a
  | otherwise = do
      result <- gcdReverse'' b (a `mod` b)
      tell (toDiffList [show a ++ " mod " ++ show b ++ " = "
                        ++ show (a `mod` b)])
      return result
  
doFunc :: Int -> Writer [String] Int
doFunc a = do
  tell ["Zhopa: " ++ show a]
  return a

newtype DiffList a = DiffList { getDiffList :: [a] -> [a] }

toDiffList :: [a] -> DiffList a
toDiffList xs = DiffList (xs++)

fromDiffList :: DiffList a -> [a]
fromDiffList (DiffList f) = f []

instance Semigroup (DiffList a) where
  
instance Monoid (DiffList a) where
  mempty = DiffList (\xs -> [] ++ xs)
  (DiffList f) `mappend` (DiffList g) = DiffList (\xs -> f (g xs))

finalCountDown :: Int -> Writer (DiffList String) ()
finalCountDown 0 = tell (toDiffList ["0"])
finalCountDown x = do
  finalCountDown (x-1)
  tell (toDiffList [show x])

finalCountDown' :: Int -> Writer [String] ()
finalCountDown' 0 = tell ["0"]
finalCountDown' x = do
  finalCountDown' (x-1)
  tell [show x]

addStuff :: Int -> Int
addStuff = do
  a <- (*2)
  b <- (+10)
  return (a+b)

threeCoins :: StdGen -> (Bool, Bool, Bool)
threeCoins gen =
  let (firstCoin, newGen) = random gen
      (secondCoin, newGen') = random newGen
      (thirdCoin, newGen'') = random newGen'
  in (firstCoin, secondCoin, thirdCoin)

type Stack = [Int]
pop :: Stack -> (Int, Stack)
pop (x:xs) = (x, xs)

push :: Int -> Stack -> ((), Stack)
push a xs = ((), a:xs)

pop' :: State Stack Int
pop' = state $ \(x:xs) -> (x, xs)
  
push' :: Int -> State Stack ()
push' a = state $ \xs -> ((), a:xs)

stackManip :: Stack -> (Int, Stack)
stackManip stack = let
  ((), newStack1) = push 3 stack
  (a , newStack2) = pop newStack1
  in pop newStack2

stackManip'' :: State Stack Int
stackManip'' = do
  push' 3
  a <- pop'
  pop'

stackManip' = do
  push 3
  a <- pop
  pop

stackManip''' :: State Stack Int
stackManip''' = do
  pop'
  pop'
  pop'

stackStuff :: State Stack ()
stackStuff = do
  a <- pop'
  if a == 5
    then push' 5
    else do
      push' 3
      push' 8

moreStack :: State Stack ()
moreStack = do
  a <- stackManip''
  if a == 100
    then stackStuff
    else return ()

stackyStack :: State Stack ()
stackyStack = do
  stackNow <- get
  if stackNow == [1,2,3]
    then put [8,3,1]
    else put [9,2,1]

--instance Monad (Fail) where

--pop3 :: State Stack Int
--pop3 = do
--  (x:xs) <- get 
--  put xs
--  return x

push3 :: Int -> State Stack ()
push3 x = do
  xs <- get
  put (x:xs)

randomSt :: (RandomGen g, Random a) => State g a
randomSt = state random

threeCoins' :: State StdGen (Bool, Bool, Bool)
threeCoins' = do
  a <- randomSt
  b <- randomSt
  c <- randomSt
  return (a, b, c)

ap' :: (Monad m) => m (a -> b) -> m a -> m b
ap' mf m = do
  f <- mf
  x <- m
  return (f x)

--f :: forall proxy a. (Read a, Show a) => proxy a -> String -> String
--f _ = (show :: a -> String) . read

begin' :: String -> String -> String
begin' x y = x ++ y

end' :: String -> String -> String
end' x y = x ++ y

keepSmall :: Int -> Writer [String] Bool
keepSmall x
  | x < 4 = do
      tell ["Save " ++ show x]
      return True
  | otherwise = do
      tell [show x ++ " too big, drop"]
      return False

powerset :: [a] -> [[a]]
powerset xs = filterM (\x -> [True, False]) xs

powerset' [] = [[]]
powerset' (x:xs) = map (x:) (powerset xs) ++ powerset xs

binSmalls :: Int -> Int -> Maybe Int
binSmalls acc x
  | x > 9
  = Nothing
  | otherwise = Just (acc + x)

solveRPN :: String -> Maybe Double
solveRPN st = do
  [result] <- foldM foldingFunction [] (words st)
  return result

foldingFunction :: [Double] -> String -> Maybe [Double]
foldingFunction (x:y:ys) "*" = return ((y * x):ys)
foldingFunction (x:y:ys) "+" = return ((y + x):ys)
foldingFunction (x:y:ys) "-" = return ((y - x):ys)
foldingFunction xs numberString = liftM (:xs) (readMaybe numberString)

readMaybe :: (Read a) => String -> Maybe a
readMaybe st = case reads st of [(x, "")] -> Just x
                                _ -> Nothing

func3 :: [Double] -> String -> Maybe [Double]
func3 (x:y:xs) "*" = return ((y * x):xs)
func3 xs numberString = liftM (:xs) (readMaybe numberString)

inMany :: Int -> KnightPos -> [KnightPos]
inMany x start = return start >>= foldr (<=<) return (replicate x moveKnight)

canReachIn :: Int -> KnightPos -> KnightPos -> Bool
canReachIn x start end = end `elem` inMany x start

newtype Prob a = Prob { getProb :: [(a, Rational)] } deriving Show

instance Functor Prob where
  fmap f (Prob xs) = Prob $ map (\(x, p) -> (f x, p)) xs

thisSituation :: Prob (Prob Char)
thisSituation = Prob
  [(Prob [('a',1 % 2),('b',1 % 2)], 1 % 4)
  ,(Prob [('c',1 % 2),('d',1 % 2)], 3 % 4)
  ]

funcProb :: Prob Bool -> (Bool, Rational) -> (Bool, Rational) -> [(Bool, Rational)]
funcProb (Prob xs) (n, m) (j, h) =
  (map (\(x, r)  -> if x == True then (x, r*m)
               else (x, r*h)) xs) 

funcProb' :: Prob Bool -> [(Bool, Rational)]
funcProb' (Prob xs) =
  foldl (\[(x, y),(w, e)] (c, z) -> if c == False then [(x,y+z),(w, e)] else [(x, y),(w, e+z)]) [(False,0),(True,0)] xs 

funcProb'' :: Prob Bool -> [(Bool, Rational)] -> [(Bool, Rational)]
funcProb'' (Prob ([])) acc = acc
funcProb'' (Prob (x:xs)) acc =
  (\[(x, y),(w, e)] (c, z) -> if c == False then funcProb'' (Prob (xs)) [(x,y+z),(w, e)] else funcProb'' (Prob (xs)) [(x, y),(w, e+z)]) acc x

flatten :: Prob (Prob a) -> Prob a
flatten (Prob xs) = Prob $ concat $ map multAll xs
  where multAll (Prob innerxs, p) = map (\(x, r) -> (x, p*r)) innerxs

instance Applicative Prob where

instance Monad Prob where
  return x = Prob [(x,1 % 1)]
  m >>= f = flatten (fmap f m)

instance MonadFail Prob where
    fail _ = Prob []

data Coin = Heads | Tails deriving (Show, Eq)

coin :: Prob Coin
coin = Prob [(Heads,1 % 2),(Tails,1 % 2)]

loadedCoin :: Prob Coin
loadedCoin = Prob [(Heads,1 % 10),(Tails,9 % 10)]

flipThree :: Prob Bool
flipThree = do
  a <- coin
  b <- coin
  c <- loadedCoin
  return (all (==Tails) [a,b,c])

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show)

freeTree :: Tree Char
freeTree =
  Node 'P'
    (Node 'O'
      (Node 'L'
        (Node 'N' Empty Empty)
        (Node 'T' Empty Empty)
      )
      (Node 'Y'
        (Node 'S' Empty Empty)
        (Node 'A' Empty Empty)
      )
     )
    (Node 'L'
      (Node 'W'
        (Node 'C' Empty Empty)
        (Node 'R' Empty Empty)
      )
      (Node 'A'
        (Node 'A' Empty Empty)
        (Node 'C' Empty Empty)
      )
    )

changeToP :: Tree Char -> Tree Char
changeToP (Node x l (Node y (Node _ m n) r)) = Node x l (Node y (Node 'P' m n) r)

data Direction = L | R deriving (Show)
type Directions = [Direction]

changeToP' :: Directions -> Tree Char -> Tree Char
changeToP' (L:ds) (Node x l r) = Node x (changeToP' ds l) r
changeToP' (R:ds) (Node x l r) = Node x l (changeToP' ds r)
changeToP' [] (Node _ l r) = Node 'P' l r

elemAt :: Directions -> Tree a -> a
elemAt (L:ds) (Node _ l _) = elemAt ds l
elemAt (R:ds) (Node _ _ r) = elemAt ds r
elemAt [] (Node x _ _) = x

type Breadcrumbs = [Direction]

goLeft :: (Tree a, Breadcrumbs) -> (Tree a, Breadcrumbs)
goLeft (Node _ l _, bs) = (l, L:bs)

goRight :: (Tree a, Breadcrumbs) -> (Tree a, Breadcrumbs)
goRight (Node _ _ r, bs) = (r, R:bs)

x –: f = f x

data Crumb a = LeftCrumb a (Tree a) | RightCrumb a (Tree a) deriving (Show)

type Breadcrumbs' a = [Crumb a]

goLeft' :: (Tree a, Breadcrumbs' a) -> (Tree a, Breadcrumbs' a)
goLeft' (Node x l r, bs) = (l, (LeftCrumb x r):bs)

goRight' :: (Tree a, Breadcrumbs' a) -> (Tree a, Breadcrumbs' a)
goRight' (Node x l r, bs) = (r, (RightCrumb x l):bs)

goUp :: (Tree a, Breadcrumbs' a) -> (Tree a, Breadcrumbs' a)
goUp (t, LeftCrumb x r:bs) = (Node x t r, bs)
goUp (t, RightCrumb x l:bs) = (Node x l t, bs)

type Zipper a = (Tree a, Breadcrumbs' a)

modify'' :: (a -> a) -> Zipper a -> Zipper a
modify'' f (Node x l r, bs) = (Node (f x) l r, bs)
modify'' f (Empty, bs) = (Empty, bs)

attach :: Tree a -> Zipper a -> Zipper a
attach t (_, bs) = (t, bs)

topMost :: Zipper a -> Zipper a
topMost (t, []) = (t, [])
topMost z = topMost (goUp z)

data List a = Empty' | Cons a (List a) deriving (Show, Read, Eq, Ord)

type ListZipper a = ([a], [a])

goForward :: ListZipper a -> ListZipper a
goForward (x:xs, bs) = (xs, x:bs)

goBack :: ListZipper a -> ListZipper a
goBack (xs, b:bs) = (b:xs, bs)

type Name = String
type Data = String
data FSItem = File Name Data | Folder Name [FSItem] deriving (Show)

myDisk :: FSItem  
myDisk = 
    Folder "root"   
        [ File "goat_yelling_like_man.wmv" "baaaaaa"  
        , File "pope_time.avi" "god bless"  
        , Folder "pics"  
            [ File "ape_throwing_up.jpg" "bleargh"  
            , File "watermelon_smash.gif" "smash!!"  
            , File "skull_man(scary).bmp" "Yikes!"  
            ]  
        , File "dijon_poupon.doc" "best mustard"  
        , Folder "programs"  
            [ File "fartwizard.exe" "10gotofart"  
            , File "owl_bandit.dmg" "mov eax, h00t"  
            , File "not_a_virus.exe" "really not a virus"  
            , Folder "source code"  
                [ File "best_hs_prog.hs" "main = print (fix error)"  
                , File "random.hs" "main = print 4"  
                ]  
            ]  
        ] 

data FSCrumb = FSCrumb Name [FSItem] [FSItem] deriving (Show)

type FSZipper = (FSItem, [FSCrumb])

fsUp :: FSZipper -> FSZipper
fsUp (item, FSCrumb name ls rs:bs) = (Folder name (ls ++ [item] ++ rs), bs)

fsTo :: Name -> FSZipper -> FSZipper
fsTo name (Folder folderName items, bs) =
  let (ls, item:rs) = break (nameIs name) items
  in (item, FSCrumb folderName ls rs:bs)
  
nameIs :: Name -> FSItem -> Bool
nameIs name (Folder folderName _) = name == folderName
nameIs name (File fileName _) = name == fileName

fsRename :: Name -> FSZipper -> FSZipper
fsRename newName (Folder name items, bs) = (Folder newName items, bs)
fsRename newName (File name dat, bs) = (File newName dat, bs)

fsNewFile :: FSItem -> FSZipper -> FSZipper
fsNewFile item (Folder folderName items, bs) = (Folder folderName (item:items), bs)

goLeft'' :: Zipper a -> Maybe (Zipper a)
goLeft'' (Node x l r, bs) = Just (l, LeftCrumb x r:bs)
goLeft'' (Empty, _) = Nothing

goRight'' :: Zipper a -> Maybe (Zipper a)
goRight'' (Node x l r, bs) = Just (r, RightCrumb x l:bs)
goRight'' (Empty, _) = Nothing

goUp'' :: Zipper a -> Maybe (Zipper a)
goUp'' (t, LeftCrumb x r:bs) = Just (Node x t r,bs)
goUp'' (t, RightCrumb x l:bs) = Just (Node x l t, bs)
goUp'' (_, []) = Nothing

fsUp' :: FSZipper -> Maybe FSZipper
fsUp' (item, FSCrumb name ls rs:bs) = Just (Folder name (ls ++ [item] ++ rs), bs)
fsUp' (_, []) = Nothing

fsTo' :: Name -> FSZipper -> Maybe FSZipper
fsTo' name (Folder folderName items, bs) = case break (nameIs name) items of
  (ls, item:rs) -> Just (item, FSCrumb folderName ls rs:bs)
  (_, []) -> Nothing
fsTo' name (File _ _, _) = Nothing 


main = do print "adf"
  
--instance Monad [] where
--  return x = [x]
--  xs >>= f = concat (map f xs)
--  fail _ = []

--instance (Monoid w) => Monad (WriterT w) where
--  return x = Writer (x, mempty)
--  (WriterT (x,v)) >>= f = let (WriterT (y, v')) = f x
--                         in Writer (y, v `mappend` v')


--instance Monad (State s) where
--    return x = State $ \s –> (x, s)
--    (State h) >>= f = State $ \s –> let (a, newState) = h s
--                                        (State g) = f a
--                                    in g newState
