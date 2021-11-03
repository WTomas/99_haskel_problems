compress :: Eq a => [a] -> [a]
compress [] = []
-- compress xs = map fst $ filter snd $ zip xs (True : (map (uncurry (/=)) $ zip (init xs) (tail xs)))
compress xs = map fst $ filter snd $ zip xs (True : zipWith (/=) (init xs) (tail xs))