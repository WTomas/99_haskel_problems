myLength :: (Num a, Enum a) => [b] -> a
myLength [] = 0
myLength xs = fst $ last $ zip [1..] xs