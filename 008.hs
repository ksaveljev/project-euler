import Data.Char (digitToInt)
import Data.List (tails)

main = do
  hugeNumber <- readFile "008.txt"
  print $ maximum $ map (product . take 5) (tails (map digitToInt $ concat $ lines hugeNumber))
