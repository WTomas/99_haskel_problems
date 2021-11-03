encode :: Eq b => [b] -> [(Int, b)]
encode [] = []
encode xs = map (\t -> (fst t, xs !! (snd t - 1))) $ zip counts (scanl1 (+) counts)
    where counts = let indices = 0 : (map fst $ filter snd $ zip [1..] $ zipWith (/=) (init xs) (tail xs)) ++ [length xs]
            in zipWith (-) (tail indices) (init indices)
