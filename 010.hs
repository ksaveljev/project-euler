main = print $ sum $ takeWhile (<= 2000000) primes
  where
    primes = 2 : [i | i <- [3,5..], and [rem i p > 0 | p <- takeWhile ((<=i).(^2)) primes]]
