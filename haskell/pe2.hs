main :: IO ()

fibo a b = a : fibo b (a + b)

main = do
  let list = takeWhile (< 4_000_000) (filter even (fibo 1 2))
  print (sum list)
