module Problems.P02 (myButLast) where 

myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [_] = error "single element list"
myButLast [x, _] = x
myButLast (_:xs) = myButLast xs

-- myButLast :: [a] -> a
-- myButLast = last . init

-- myButLast :: [a] -> a
-- myButLast x = reverse x !! 1

-- myButLast :: [a] -> a
-- myButLast = head . tail . reverse
