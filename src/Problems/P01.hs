module Problems.P01 (myLast) where

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

-- myLast = head . reverse
