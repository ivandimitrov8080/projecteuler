#!/usr/bin/env runghc

import Data.List

main :: IO ()

nums = [2..20]

prunedNums = [11..20]

divisible :: Int -> Bool
divisible n = all (\x -> n `mod` x == 0) prunedNums

main = do
    print (find divisible [20, 40..product nums])
