

import Data.List

main :: IO ()

squares :: [Int] -> Int
squares = foldr (\ x -> (+) (x * x)) 0

sums :: [Int] -> Int
sums [] = 0
sums l = sum l ^ 2

main = do
    let nums = [1..100]
    print (sums nums - squares nums)
