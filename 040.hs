import Data.Char (digitToInt)

main = print $ (n 1) * (n 10) * (n 100) * (n 1000) * (n 10000) * (n 100000) * (n 1000000)
  where
    champernowne = concat [show x | x <- [0..]]
    n i = digitToInt $ champernowne !! i
