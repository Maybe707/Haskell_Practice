module Demo where

newtype Identity a = Identity { runIdentity :: a }
  deriving (Eq, Show)

instance Functor Identity where
  fmap f (Identity x) = Identity (f x)

instance Applicative Identity where
  pure x = Identity x
  (<*>) (Identity f) (Identity x) = Identity (f x)

instance Monad Identity where
  return x = Identity x
  Identity x >>= k = k x

{-
qqqqqqqppppppp: ну это апликативный функтор, у тебя типо дается функция упакованная из a -> b, и упакованное значение а
qqqqqqqppppppp: надо вернуть упакованный результат применения функции
qqqqqqqppppppp: Just (+1) <*> Just (10)
qqqqqqqppppppp: +1
qqqqqqqppppppp: это функция
qqqqqqqppppppp: да не, вроде всегда надо было
qqqqqqqppppppp: я не в курсе
qqqqqqqppppppp: хз
qqqqqqqppppppp: я читал книжку learn you a haskell только
qqqqqqqppppppp: и то не до конца
qqqqqqqppppppp: где то скипнул почти в конце
qqqqqqqppppppp: потому что там тоже устаревшее что то было
qqqqqqqppppppp: инстнас функтор это интерфейс для fmap
qqqqqqqppppppp: реализация
qqqqqqqppppppp: применяешь функцию к завернутому значению и оборачиваешь его опять
qqqqqqqppppppp: вот такая штука - Just (+1) <*> Just (10)
qqqqqqqppppppp: обернутая функция, обернутое значение
qqqqqqqppppppp: разворачиваешь функцию, разворачиваешь значение, применяешь, и оборачиваешь обратно
qqqqqqqppppppp: да
qqqqqqqppppppp: ну рещультат типо
qqqqqqqppppppp: просто оборачивает любое значение
qqqqqqqppppppp: тоже что и return
qqqqqqqppppppp: в monad

newtype Identity a = Identity a deriving (Show)

instance Functor Identity where
  fmap f (Identity x) = Identity (f x)

instance Applicative Identity where
  pure x = Identity x
  (<*>) (Identity f) (Identity x) = Identity (f x)

instance Monad Identity where
  (>>=) (Identity x) f = f x

main = do
  putStrLn $ show $ (Identity 3) >>= (\x -> Identity (x + 1))

-}


