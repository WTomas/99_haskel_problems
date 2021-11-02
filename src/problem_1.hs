myLast :: [p] -> p
myLast [] = error "Cannot return last element of an empty list!"
myLast [x] = x
myLast (x:xs) = myLast xs
