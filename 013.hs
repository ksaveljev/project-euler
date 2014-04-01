main = readFile "013.txt" >>= print . take 10 . show . sum . map read . lines
