module Problems.P05 where

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- myReverse :: [a] -> [a]
-- myReverse = foldl (flip (:)) []
