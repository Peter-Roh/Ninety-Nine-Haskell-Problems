module Problems.P07 where

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List []) = []
flatten (List (x:xs)) = flatten x ++ flatten (List xs)

-- flatten :: NestedList a -> [a]
-- flatten (Elem x) = [x]
-- flatten (List x) = concatMap flatten x
