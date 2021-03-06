module Demo where

class Monoid' a where
  mempty' :: a
  mappend' :: a -> a -> a

  mconcat' :: [a] -> a
  mconcat' = foldr mappend' mempty'

instance Monoid' [a] where
  mempty' = []
  mappend' = (++)

newtype Sum' a = Sum {getSum :: a}
  deriving (Eq, Ord, Read, Show, Bounded)

instance Num a => Monoid' (Sum' a) where
  mempty' = Sum 0
  Sum x `mappend'` Sum y = Sum (x + y)

newtype Product' a = Product {getProduct :: a}
  deriving (Eq, Ord, Read, Show, Bounded)

instance Num a => Monoid' (Product' a) where
  mempty' = Product 1
  Product x `mappend'` Product y = Product (x * y)


instance (Monoid' a, Monoid' b) => Monoid' (a, b) where
  mempty' = (mempty', mempty')
  (x1, x2) `mappend'` (y1, y2) =
                (x1 `mappend'` y1, x2 `mappend'` y2)

instance Monoid' a => Monoid' (Maybe a) where
  mempty' = Nothing
  Nothing `mappend'` m = m
  m `mappend'` Nothing = m
  Just m1 `mappend'` Just m2 = Just (m1 `mappend'` m2)

newtype Endo a = Endo {appEndo :: a -> a}

instance Monoid' (Endo a) where
  mempty' = Endo id
  Endo f `mappend'` Endo g = Endo (f `mappend'` g)

