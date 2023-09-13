#!/usr/bin/env runghc
import Data.List

main :: IO ()

num :: Double
num = 600851475143

primes :: [Int]
primes = 2 : filter isPrime [3, 5..]

isPrime :: Int -> Bool
isPrime n = all (\p -> n `mod` p /= 0) (takeWhile (\p -> p * p <= n) primes)


main = do
  print (find (\n -> floor num `mod` n == 0) (reverse (takeWhile (< ceiling (sqrt num)) primes)))
