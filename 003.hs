main = print $ factor 600851475143
  where
    factor n
      | even n = factor (div n 2)
      | otherwise = find n 3
        where
          find n m
            | m >= n = m
            | mod n m == 0 = find (div n m) m
            | otherwise = find n (m + 2)
