import Data.List (union)

main = print $ sum $ [3,6..999] `union` [5,10..999]
