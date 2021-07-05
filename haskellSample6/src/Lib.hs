module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

infixr 5 .++
(.++) :: List a -> List a -> List a
Empty      .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

a = 5 :-: 6 :-: Empty
b = 7 :-: Empty

a .++ b
