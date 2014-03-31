main = print $ primes !! 10000
  where
    primes = 2 : [i | i <- [3,5..], and [rem i p > 0 | p <- takeWhile ((<=i).(^2)) primes]]
