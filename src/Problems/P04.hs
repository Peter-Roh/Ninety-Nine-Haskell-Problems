module Problems.P04 where

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

-- myLength :: [a] -> Int
-- myLength = foldl (\n _ -> n + 1) 0

-- myLength :: [a] -> Int
-- myLength = fst . last . zip [1..]
