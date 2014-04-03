import Data.List (sort)

main = print $ snd $ head $ dropWhile (\(x,y) -> (not . isSolution) x) (zip fibs [1..])
  where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
    isSolution x =
      let
        a = sort . show $ mod x 1000000000
        b = sort . take 9 . show $ x
      in a == "123456789" && b == "123456789"
