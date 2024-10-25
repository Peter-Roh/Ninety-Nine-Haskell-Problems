module Problems.P03 where

elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty list"
elementAt (x:xs) 1 = x
elementAt (x:xs) k
  | k  < 1 = error "index should be positive"
  | otherwise = elementAt xs (k - 1)

-- elementAt xs k
--   | k < 1 = error "index should be positive"
--   | k > length xs = error "index out of bounds"
--   | otherwise = xs !! (k - 1)
