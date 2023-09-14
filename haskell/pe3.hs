#!/usr/bin/env runghc
import Data.List

main :: IO ()

num :: Double
num = 600851475143

primes :: [Int]
primes = 2 : filter isPrime [3, 5..]

isPrime :: Int -> Bool
isPrime n = all (\p -> n `mod` p /= 0) (takeWhile (\p -> p * p <= n) primes)

sqn = sqrt num

main = do
  print (last (filter (\n -> floor num `mod` n == 0) (takeWhile (< ceiling sqn) primes)))
