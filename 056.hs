import Data.Char (digitToInt)

main = print . maximum $ map (sum . map digitToInt . show) [x | a <- [2..100], b <- [2..100], let x = a ^ b]
