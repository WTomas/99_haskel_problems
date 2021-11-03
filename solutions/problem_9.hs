pack :: Eq a => [a] -> [[a]]
pack [] = []
pack xs =
    let indices = 0 : (map fst $ filter snd $ zip [1..] $ zipWith (/=) (init xs) (tail xs)) ++ [length xs]
    in zipWith (curry (\indexPair -> slice (fst indexPair) (snd indexPair - 1) xs)) (init indices) (tail indices)
    where slice from to ys = take (to - from + 1) (drop from ys)