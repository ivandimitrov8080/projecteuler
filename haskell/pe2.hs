#!/usr/bin/env runghc
main :: IO ()

fibo a b = a : fibo b (a + b)

main = do
  print (sum (takeWhile (< 4_000_000) (filter even (fibo 1 2))))
