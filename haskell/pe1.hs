main :: IO ()
validateValues :: [Int] -> [Int]
validateValues = filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0)
main = do
  let list = validateValues [0 .. 999]
  print (sum list)
