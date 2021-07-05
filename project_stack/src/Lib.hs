module Lib
    ( someFunc
    ) where

import           Debug.Trace

someFunc :: IO ()
someFunc = print $ qsort [5, 1, 9, 4, 6, 7, 3]

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x : xs) =
    let smallerSorted = trace (unwords ["Smallersorted"])
                              quicksort
                              [ a | a <- xs, a <= x ]
        biggerSorted = trace (unwords ["BiggerSorted"])
                             quicksort
                             [ a | a <- xs, a > x ]
    in  smallerSorted ++ [x] ++ biggerSorted

quicksort' :: Ord a => [a] -> [a]
quicksort' [] = []
quicksort' (x : xs) =
    (\small -> (\big -> small ++ [x] ++ big) (quicksort' [ a | a <- xs, a > x ])
        )
        (quicksort' [ a | a <- xs, a <= x ])

qsort :: Ord a => [a] -> [a]
qsort []       = []
qsort (x : xs) = qsort left ++ [x] ++ qsort right
    where (left, right) = (filter (<= x) xs, filter (> x) xs)
