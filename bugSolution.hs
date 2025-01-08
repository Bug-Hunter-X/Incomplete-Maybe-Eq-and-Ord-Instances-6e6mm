{-# LANGUAGE FlexibleInstances #-}

instance Eq a => Eq (Maybe a) where
  (==) Nothing Nothing = True
  (==) (Just x) (Just y) = x == y
  (==) _ _ = False

instance Ord a => Ord (Maybe a) where
  compare Nothing Nothing = EQ
  compare Nothing _ = LT
  compare _ Nothing = GT
  compare (Just x) (Just y) = compare x y

main :: IO ()
main = do
  print (Nothing :: Maybe Int)
  print (Just 5 :: Maybe Int)
  print (Nothing == Nothing)
  print (Just 5 == Just 5)
  print (Just 5 == Nothing)
  print (compare Nothing Nothing)
  print (compare Nothing (Just 5))
  print (compare (Just 5) Nothing)