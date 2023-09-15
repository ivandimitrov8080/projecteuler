#!/usr/bin/env runghc

import Data.List

main :: IO ()

nums = [2..20]

prunedNums = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

divisible :: Int -> Bool
divisible n = all (\x -> n `mod` x == 0) prunedNums

main = do
    let prod = product nums
    let decreasing = [prod, prod-1..20]
    let list = [20, 40..prod]
    print (filter divisible list)
