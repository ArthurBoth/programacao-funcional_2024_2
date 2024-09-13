module FindShortest (find_shortest) where

split :: String -> [String]
split x = words x

splitInSize :: String -> [Int]
splitInSize x = map size (split x)

size :: [Char] -> Int
size x = length x

smallest :: [Int] -> Int
smallest [x] = x
smallest (x : xs) = min x (smallest xs)

find_shortest :: String -> Int
find_shortest x = smallest $ splitInSize x