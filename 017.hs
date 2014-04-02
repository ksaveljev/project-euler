import Data.Char (digitToInt)

main = print . length . concatMap count $ [1..1000]
  where
    count x
      | x == 0                        = []
      | x < 20                        = words !! (x-1)
      | x >= 20 && x < 100            = words !! (firstDigit (x) - 2 + 19) ++ count (x - firstDigit (x) * 10)
      | x < 1000 && x `mod` 100 == 0  = words !! (firstDigit (x) - 1) ++ "hundred"
      | x > 100 && x < 1000           = words !! (firstDigit (x) - 1) ++ "hundredand" ++ count (x - firstDigit (x) * 100)
      | x == 1000                     = "onethousand"
    words = ["one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
    firstDigit x = digitToInt . head . show $ x
