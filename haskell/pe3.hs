#!/usr/bin/env runghc
main :: IO ()

sieve :: Int -> [Int]
sieve lim = [lim]

main = do
  print (sieve 200)
