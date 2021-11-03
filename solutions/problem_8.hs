compress :: Eq a => [a] -> [a]
compress [] = []
compress xs = map fst $ filter snd $ zip xs (True : zipWith (/=) (init xs) (tail xs))