module FindShortest (find_shortest) where

smallest :: [Int] -> Int
smallest [x] = x
smallest (x : xs) = min x (smallest xs)

find_shortest :: String -> Int
find_shortest x = smallest $ map length (words x)