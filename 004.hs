main = print $ maximum [x | y <- [100..999], z <- [100..999], let x = y * z, let s = show x, s == reverse s]
