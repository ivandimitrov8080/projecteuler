#!/usr/bin/env runghc

import Data.List

main :: IO ()

palindrome :: String -> Bool
palindrome s = s == reverse s

main = do
    let nums = [999,998..100]
    let mults = [show (x * y) | x <- nums, y <- nums, x < y]
    print (maximum (map read (filter palindrome mults) :: [Int]))
