myButLast :: [p] -> p
myButLast [] = error "Cannot return second to last element of empty list!"
myButLast [x] = error "List only has a single element!"
myButLast [x, y] = x
myButLast (x:xs) = myButLast xs