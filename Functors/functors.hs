module Main where

import Control.Applicative ((<|>))
import Data.Monoid
import Data.Function (fix)

import Data.Char
import Data.List
import Control.Applicative
import Data.Monoid
import qualified Data.Foldable as F

function :: (Int -> Int) -> (Int -> Int) -> (Int -> Int)
function x y = (\c -> x (y c))

data CMaybe a = CNothing | CJust Int a deriving (Show)

instance Functor CMaybe where
  fmap f CNothing= CNothing
  fmap f (CJust counter x) = CJust (counter+1) (f x)

func' :: Int -> (Int -> Int)
func' x = (\y -> x + y)

class Functor' f where
  fmap'' :: (a -> b) -> f a -> f b

instance Functor' ((->) r) where
  fmap'' f g = (\x -> f (g x))

class Cyborg f where
  core :: (a -> b) -> f a -> f b

data Robot a = Factory a | Factory' a deriving (Show)

instance Cyborg [] where
  core = map

fun' x y = \g -> g x y
fun'' x y g = g x y
fun''' = flip . flip id

function2 :: (Num a) => a -> a
function2 a = a + 2

summa :: (Int -> Int -> Int) -> Int -> Int -> Int
summa a b c =  b `a` c

summa' :: (Int -> Int) -> Int -> Int -> Int
summa' a b c =  a b + c

sample1 :: Int -> Int -> Int
sample1 a b = a + b

sample2 :: Int -> Int
sample2 b = b

myAction :: IO String
myAction = do
  a <- getLine
  b <- getLine
  return $ a ++ b

myAction' :: IO String
myAction' = (++) <$> getLine <*> getLine

class Functor f => Applicative' f where
  pure' :: a -> f a
  (<**>) :: f (a -> b) -> f a -> f b

instance Applicative' ((->) r) where
  pure' x = (\_ -> x)
  f <**> g = \x -> f x (g x)

sequenceA'' :: (Applicative f) => [f a] -> f [a]
sequenceA'' [] = pure []
sequenceA'' (x:xs) = (:) <$> x <*> sequenceA'' xs

sequenceA' :: (Applicative f) => [f a] -> f [a]  
sequenceA' = foldr (liftA2 (:)) (pure [])  

liftA2' :: (Applicative f) => (a -> b -> c) -> f a -> f b -> f c
liftA2' f a b = f <$> a <*> b

data Orc = OrcWarrior Int Int | OrcMage Int Int Int deriving (Show)

data Human = Coder { getCoder :: Int, getGovnocoder :: Int } | Govnocoder { getCoder2 :: Int, getGovnocoder2 :: Int }  deriving (Show)

newtype CharList = CharList' { getCharList :: [Char] } deriving (Eq, Show)

newtype Cyborg2 = Cyborg'' { terminator :: Human } deriving (Show)

newtype NewOrc = Orc'' { biba :: Orc} deriving (Show)

superFunction :: Human -> Int -> Int
superFunction x z 
  | z == 2 = getGovnocoder (terminator (Cyborg'' (x)))
  | z == 1 = getCoder (terminator (Cyborg'' (x)))
  | z == 4 = getGovnocoder2 (terminator (Cyborg'' (x)))
  | z == 3 = getCoder2 (terminator (Cyborg'' (x)))

newtype Pair b a = Pair' { getPair :: (a, b) }

instance Functor (Pair c) where
  fmap f (Pair' (x, y)) = Pair' (f x, y)

newtype CoolBool a = CoolBool' { getCoolBfool :: a } deriving (Eq, Ord, Show)

helloMe :: CoolBool a -> [Char]
helloMe (CoolBool' _) = "Hello!"

-- instance Functor (,) where

type IntList = [Int]  

data SomeShit a b = SomeShit' a | SomeShit'' b deriving (Eq, Ord, Show)

lengthCompare :: String -> String -> Ordering
lengthCompare x y = let a = length x `compare` length y
                        b = x `compare` y
                    in if a == EQ then b else a

lengthCompare' :: String -> String -> Ordering
lengthCompare' x y = (length x `compare` length y) `mappend`
                     (vowels x `compare` vowels y) `mappend`
                     (x `compare` y)
  where vowels = length . filter (`elem` "aeiou")

newtype First' a = First'' { getFirst :: Maybe a } deriving (Eq, Ord, Read, Show)

instance Semigroup (First' a) where
  First'' (Just x) <> _ = First'' (Just x)
  First'' Nothing <> x = x
  
instance Monoid (First' a) where
  mempty = First'' Nothing

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

{-- instance F.Foldable Tree where  
    foldMap f EmptyTree = mempty  
    foldMap f (Node x l r) = foldMap f l `mappend`  
                             f x           `mappend`  
                             foldMap f r  
--}

testTree = Node 5
            (Node 3
               (Node 1 EmptyTree EmptyTree)
               (Node 6 EmptyTree EmptyTree)
            )
            (Node 9
               (Node 8 EmptyTree EmptyTree)
               (Node 10 EmptyTree EmptyTree)
            )

applyMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
applyMaybe Nothing f = Nothing
applyMaybe (Just x) f = f x

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

data Writer'' w v where
  Tell :: w -> Writer'' w ()

main = do
  line <- fmap (intersperse '-' . reverse . map toUpper) getLine
  putStrLn line
