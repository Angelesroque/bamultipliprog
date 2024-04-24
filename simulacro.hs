relacionesValidas :: [(String,String)] -> Bool
relacionesValidas [] = True
relacionesValidas (x:xs)
                        |fst x == snd x = False
                        |pertenece x xs = False 
                        |otherwise =  relacionesValidas xs 

pertenece :: (String,String) -> [(String,String)] -> Bool
pertenece _ [] = False 
pertenece x (y:ys)
                  | igual x y == True = True
                  |otherwise = pertenece x ys 


igual :: (String,String) -> (String,String) -> Bool
igual (x,y) (z,a) 
                 | ((x == z) && (y == a)) || ((x == a) && (y == z)) =True 
                 |  otherwise = False 

{-componentesDistintos :: (String,String) -> Bool
componentesDistintos (a,b) = a /= b 

compDistintosList :: [(String,String)] -> Bool
compDistintosList (x:xs) = (componentesDistintos x) && (compDistintosList xs) -}
