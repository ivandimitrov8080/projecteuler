#!/usr/bin/env runghc
main :: IO ()

fibList :: [Integer]
fibList = 1 : 1 : zipWith (+) fibList (tail fibList)

main = do
  print (sum (takeWhile (< 4_000_000) (filter even fibList)))
