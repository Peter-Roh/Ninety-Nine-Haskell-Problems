module Problems.P03 where

elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty list"
elementAt (x:_) 1 = x
elementAt (_:xs) k
  | k  < 1 = error "index should be positive"
  | otherwise = elementAt xs (k - 1)

-- elementAt xs k
--   | k < 1 = error "index should be positive"
--   | k > length xs = error "index out of bounds"
--   | otherwise = xs !! (k - 1)

-- elementAt :: [a] -> Int -> a
-- elementAt xs i = xs !! (i - 1)
