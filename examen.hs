
--EJERCICIO 1
cantMateriasAprobadas :: [Int] -> Int
cantMateriasAprobadas [ ] = 0
cantMateriasAprobadas (x:xs) 
                            |x > 4 || x == 4 = 1 + cantMateriasAprobadas xs
                            |otherwise = cantMateriasAprobadas xs 

aproboMasDeNMaterias0 :: [Int] -> Int -> Bool
aproboMasDeNMaterias0 x n = cantMateriasAprobadas x > n 


aproboMasDeNMaterias :: [([Char],[Int])] -> [Char] -> Int -> Bool
aproboMasDeNMaterias (x:xs) a n 
                                | a == fst x = aproboMasDeNMaterias0 (snd x)  n 
                                |otherwise = aproboMasDeNMaterias xs a n 


buenosAlumnos :: [([Char],[Int])] -> [[Char]]
buenosAlumnos [ ] = [ ]
buenosAlumnos (x:xs)
                    |buenAlumno x = fst x : buenosAlumnos xs 
                    |otherwise = buenosAlumnos xs 

buenAlumno :: ([Char],[Int]) -> Bool
buenAlumno (a,b) = sinAplazos b && (promedio b >= 8) 

sinAplazos :: [Int] -> Bool
sinAplazos [ ] = True
sinAplazos (x:xs) 
                |x < 4 = False
                |otherwise = sinAplazos xs 


promedio :: [Int] -> Float
promedio [x] = fromIntegral(x)
promedio x = fromIntegral(sumaDeNotas x) / fromIntegral (cantMaterias x) 

cantMaterias :: [Int] -> Int
cantMaterias [] = 0
cantMaterias (x:xs) = 1 + cantMaterias xs 

sumaDeNotas :: [Int] -> Int
sumaDeNotas [] = 0
sumaDeNotas (x:xs) = x + sumaDeNotas xs 

--EJERCICIO 3
mejorPromedio :: [([Char],[Int])] -> [Char]
mejorPromedio [x] = fst x 
mejorPromedio (x:xs) 
                    | promedio (snd x) > promedio (snd (head xs)) || promedio (snd x) == (promedio (snd (head xs))) = mejorPromedio (x: tail xs)   
                    |otherwise = mejorPromedio xs  

--EJERCICIO 4 
seGraduoConHonores :: [([Char],[Int])] -> Int -> [Char] -> Bool
seGraduoConHonores x y z = aproboMasDeNMaterias x z (-1) && pertenece z (buenosAlumnos x ) && aUnPuntoDelMejorPromedio x x z 



aUnPuntoDelMejorPromedio :: [([Char],[Int])] -> [([Char],[Int])] -> [Char] -> Bool
aUnPuntoDelMejorPromedio _ [] _ = False
aUnPuntoDelMejorPromedio x (y:ys) a
                                | (a == fst y) && ((mejorPromedio1 x - promedio (snd y))  == fromIntegral 1)  = True 
                                |otherwise = aUnPuntoDelMejorPromedio x ys a 

mejorPromedio1 :: [([Char],[Int])] -> Float 
mejorPromedio1 [x] = promedio (snd x)
mejorPromedio1 (x:xs) 
                    | promedio (snd x) > promedio (snd(head xs)) = mejorPromedio1(x:tail xs)
                    |otherwise = mejorPromedio1 xs 

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False 
pertenece x (y:ys)
                | x == y = True
                |otherwise = pertenece x ys 
