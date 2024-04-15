--FACTORIAL
factorial :: Int -> Int
factorial n 
           | n == 0 = 1
           | n > 0 = n * factorial (n-1)

--Patter matching
factorial1 :: Int -> Int
factorial1 0 = 1
factorial1 n = n * factorial (n-1)

--2)
parteEntera :: Float -> Integer
parteEntera n
            | 0 <= n  && n < 1 = 0
            | n >= 1 = parteEntera(n - 1) +1 
            |otherwise = parteEntera(n+1)-1

--3)
esDivisible :: Integer -> Integer -> Bool
esDivisible x z 
               | x - z == 0 = True
               | x - z < 0  = False
               |otherwise = esDivisible(x - z) z 

--4)
sumaImpares :: Integer -> Integer
sumaImpares n 
            | n == 0 = 0
            | n == 1 = 1
            |otherwise =  sumaImpares(n - 1) + (n*2-1)

sumaImpAux :: Integer -> Integer -> Integer 
sumaImpAux n m 
              | n == 0 = 0
              | n == 1 = 1
              | mod m 2 == 0 = sumaImpAux n (m+1)
              | otherwise = 
                


