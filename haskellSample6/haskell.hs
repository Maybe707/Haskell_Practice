module Main where

import qualified Data.Map as Map

data Point = MkPoint Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (MkPoint x1 y1) (MkPoint x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

nudge :: Shape -> Float -> Float -> Shape  
nudge (Circle (MkPoint x y) r) a b = Circle (MkPoint (x+a) (y+b)) r  
nudge (Rectangle (MkPoint x1 y1) (MkPoint x2 y2)) a b = Rectangle (MkPoint (x1+a) (y1+b)) (MkPoint (x2+a) (y2+b)) 

data Govno = Mocha Int Int Int | Kal Int Int | Kopra Bool Bool deriving (Show)
data IntOrBool = MkInt Int | MkBool Bool deriving (Show)
data TempConstruction = DataTempConstruction Float Float
data Temperature = MkC Float | MkF Float deriving (Show)
data SomeConstruction = Int | Bool deriving (Show)

govnochist :: Govno -> IntOrBool
govnochist (Mocha x y z) = MkInt (x + y * z)
govnochist (Kal x y) = MkInt (x + y)
govnochist (Kopra x y) = MkBool (x && y)

temp :: TempConstruction -> Temperature
temp (DataTempConstruction x y) = MkC (x + y)

func :: Int -> Int -> Int
func x y = x * y

func' :: SomeConstruction -> String
func' x = show x

baseCircle :: Float -> Shape
baseCircle r = Circle (MkPoint 0 0) r

baseRect :: Float -> Float -> Shape
baseRect width height = Rectangle (MkPoint 0 0) (MkPoint width height)

data CarC a b c = Car {company :: a, model :: b, year :: c} deriving (Show)  

data SomeConstruction' = DataConst Int Int

data IntMaybe = INothing | IJust Int

data StringMaybe = SNothing | SJust String

data ShapeMaybe = ShNothing | ShJust Shape

tellCar :: (Show a) => CarC String String a -> String  
tellCar (Car {company = c, model = m, year = y}) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

data Vector a = Vector a a a deriving (Show)  
  
vplus :: (Num t) => Vector t -> Vector t -> Vector t  
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)  
  
vectMult :: (Num t) => Vector t -> t -> Vector t  
(Vector i j k) `vectMult` m = Vector (i*m) (j*m) (k*m)  
  
scalarMult :: (Num t) => Vector t -> Vector t -> t  
(Vector i j k) `scalarMult` (Vector l m n) = i*l + j*m + k*n  

data Person = Person { firstName :: String  
                     , lastName :: String  
                     , age :: Int  
                     } deriving (Eq, Show, Read)

mysteryDude = "Person { firstName =\"Michael\", lastName =\"Diamond\", age = 43}"

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Eq, Ord, Show, Read, Bounded, Enum)

data Construct' a = Const1 a | Const2 a deriving (Eq, Ord, Show)

phoneBook :: [(String,String)]  
phoneBook =      
    [("betty","555-2938")     
    ,("bonnie","452-2928")     
    ,("patsy","493-2928")     
    ,("lucille","205-2928")     
    ,("wendy","939-8282")     
    ,("penny","853-2492")     
    ]  

type PhoneNumber = String
type Name = String
type PhoneBook = [(Name,PhoneNumber)]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name,pnumber) `elem` pbook

type IntMap v = Map.Map Int v

data LockerState = Taken | Free deriving (Show, Eq)

type Code = String

type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code  
lockerLookup lockerNumber map =   
    case Map.lookup lockerNumber map of   
        Nothing -> Left $ "Locker number " ++ show lockerNumber ++ " doesn't exist!"  
        Just (state, code) -> if state /= Taken   
                                then Right code  
                                else Left $ "Locker " ++ show lockerNumber ++ " is already taken!"

lockers :: LockerMap  
lockers = Map.fromList   
    [(100,(Taken,"ZD39I"))  
    ,(101,(Free,"JAH3I"))  
    ,(103,(Free,"IQSA9"))  
    ,(105,(Free,"QOTSA"))  
    ,(109,(Taken,"893JJ"))  
    ,(110,(Taken,"99292"))  
    ]

infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

infixr 5 .++
(.++) :: List a -> List a -> List a
Empty .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

data Tree a = EmptyTree | Node a (Tree a)  (Tree a) deriving (Show)

singleton :: a -> Tree a  
singleton x = Node x EmptyTree EmptyTree  
  
treeInsert :: (Ord a) => a -> Tree a -> Tree a  
treeInsert x EmptyTree = singleton x  
treeInsert x (Node a left right)   
    | x == a = Node x left right  
    | x < a  = Node a (treeInsert x left) right  
    | x > a  = Node a left (treeInsert x right) 

treeElem :: (Ord a) => a -> Tree a -> Bool  
treeElem x EmptyTree = False  
treeElem x (Node a left right)  
    | x == a = True  
    | x < a  = treeElem x left  
    | x > a  = treeElem x right

data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where  
    Red == Red = True  
    Green == Green = True  
    Yellow == Yellow = True  
    _ == _ = False  

instance Show TrafficLight where  
    show Red = "Red light"  
    show Yellow = "Yellow light"  
    show Green = "Green light"

class YesNo a where
  yesno :: a -> Bool

instance YesNo Int where
  yesno 0 = False
  yesno _ = True

instance YesNo [a] where
  yesno [] = False
  yesno _ = True

instance YesNo Bool where
  yesno = id

instance YesNo (Maybe a) where
  yesno (Just _) = True
  yesno Nothing = False

instance YesNo (Tree a) where
  yesno EmptyTree = False
  yesno _ = True

instance YesNo TrafficLight where
  yesno Red = False
  yesno _ = True

yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult =
  if yesno yesnoVal
     then yesResult
     else noResult

instance Functor Tree where
  fmap f EmptyTree = EmptyTree
  fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

data KakoetoGovno a b = Kek a | Peepo b deriving (Eq, Ord, Show)

class CustomFunctor f where
  funmap :: (a -> b) -> f a -> f b

instance CustomFunctor (Either a) where  
    funmap f (Right x) = Right (f x)  
    funmap f (Left x) = Left x  

eitherFunc f (Right x) = Right x
eitherFunc f (Left x) = Left (f x)

data CarC2 a b c = Car2 {company2 :: a, model2 :: b, year2 :: c} deriving (Show)

class Tofu t where
  tofu :: j a -> t a j

data Frank' a b = Frank {frankField :: b a} deriving (Show)

instance Tofu Frank' where
  tofu x = Frank x

data Barry t k p = Barry { yabba :: p, dabba :: t k } deriving (Show)

instance Functor (Barry a b) where
  fmap f (Barry {yabba = x, dabba = y}) = Barry {yabba = f x, dabba = y}
 
main = putStrLn "Hello, World!"
