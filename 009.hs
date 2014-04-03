main = print . product . head $ [[a,b,c] | c <- [1..], b <- [1..c], let a = 1000 - c - b, a ^ 2 + b ^ 2 == c ^ 2]
