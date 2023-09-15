#!/usr/bin/env runghc

import Data.List

main :: IO ()

nums = [2..20]

divisible :: Int -> Bool
divisible n = all (\x -> n `mod` x == 0) nums

main = do
    let prod = product nums
    let decreasing = [prod, prod-1..20]
    let list = [20..prod]
    print (filter divisible list)
