
elementAt :: [p] -> Int -> p
elementAt xs i 
    | length xs < i || i < 1 = error "Index out of bounds!"
    | otherwise = snd $ last $ takeWhile (\(idx, _) -> idx <= i) $ zip [1..] xs