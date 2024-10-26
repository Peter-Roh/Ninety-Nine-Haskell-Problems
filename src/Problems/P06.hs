module Problems.P06 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

-- isPalindrome :: Eq a => [a] -> Bool
-- isPalindrome = reverse >>= (==)
