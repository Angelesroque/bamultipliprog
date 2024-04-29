sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [ ] = [ ]
sacarBlancosRepetidos [c] = [c]
sacarBlancosRepetidos (x:y:xs) 
                            |x == ' ' && y == ' ' = sacarBlancosRepetidos (y:xs)
                            |otherwise =x:sacarBlancosRepetidos(y:xs)
                    
{-contarPalabras :: [Char] -> Integer, que dada una lista de caracteres devuelve la cantidad de palabras que
tiene.
 Voy aplicar lo de contar los espacios en vez de las palabras -}
contarPalabras :: [Char] -> Integer
contarPalabras [ ] = 0
contarPalabras [x] 
                 |x /= ' ' = 1
                 |otherwise = 0
contarPalabras (x:xs)= 1 + contarEspacio(sacarIniFinEspacio(sacarBlancosRepetidos (x:xs)))

sacarFinEspacio :: [Char] -> [Char]
sacarFinEspacio [x]
                   | x == ' ' = [ ]
                   |otherwise = [x]
sacarFinEspacio (x:xs) = x:sacarFinEspacio xs


sacarIniFinEspacio :: [Char] -> [Char]
sacarIniFinEspacio [ ] = [ ]
sacarIniFinEspacio [x] = [x]
sacarIniFinEspacio (x:xs) 
                        | x == ' ' = sacarFinEspacio xs
                        |otherwise = sacarFinEspacio xs 

contarEspacio :: [Char] -> Integer
contarEspacio [ ] = 0
contarEspacio [x] 
                 | x == ' ' = 1
                 |otherwise = 0
contarEspacio (x:xs)
                | x == ' ' = 1 + contarEspacio xs 
                |otherwise = contarEspacio xs 




pertenece :: (Eq t) => t -> [t] -> Bool
pertenece e [ ] = False
pertenece e (x:xs) = e == x || pertenece e xs 
 
todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos [ ] = True
todosDistintos [x] = True 
todosDistintos (x:xs)
                     |pertenece x xs = False
                     |otherwise = todosDistintos xs
