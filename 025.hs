main = print $ length (takeWhile (< t) fibs) + 1
  where
    t = 10 ^ 999
    fibs = 1 : 1 : (zipWith (+) fibs (tail fibs))
