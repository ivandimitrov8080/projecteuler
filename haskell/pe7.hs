#!/usr/bin/env runghc

import Data.List

main :: IO ()

primes :: [Int]
primes = 2 : filter isPrime [3, 5..]

isPrime :: Int -> Bool
isPrime n = all (\p -> n `mod` p /= 0) (takeWhile (\p -> p * p <= n) primes)

main = do
    print (last (take 10001 primes))
