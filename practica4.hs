-- Fibonacci

--fibonacci :: Int -> Int
{-
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n >= 2 = fibonacci (n-1) + fibonacci (n-2)
-}
-- pattern matching
fibonacci :: Int -> Int

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = (fibonacci (n-1)) + (fibonacci (n-2))
-- con -1 no devuelve resultados porque no abarque a los negativos

--Ejercicio 2

parteEntera :: Float -> Int

parteEntera n | (n >= 0) && (n < 1) = 0
              | n >= 1 = 1 + parteEntera(n-1)
              | otherwise = (-1) + parteEntera (n + 1)


--Ejercicio 3 (ultimo digito de n)
digitoUnidades :: Int -> Int
digitoUnidades n = mod n 10
--(me saca el ultimo digito de n)
sacarUnidades :: Int -> Int
sacarUnidades n = div n 10

todosDigitosIguales :: Int -> Bool
todosDigitosIguales n | n < 10 = True
                      | otherwise = (
                        (digitoUnidades(n) == digitoUnidades(sacarUnidades(n)))
                        && todosDigitosIguales (sacarUnidades(n)))              
 
cantDigitos :: Integer -> Integer
cantDigitos n
             | 0<n && n < 10 = 1
             |otherwise = 1 + cantDigitos(div n 10)

iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n i 
                | cantDigitos n == i = mod n 10
                |otherwise= iesimoDigito(div n 10) i
--9)
esCapicua :: Integer -> Bool
esCapicua n 
           | 0<n && n<10 = True
           | mod n 10 == div n 10 = True
--ejercicio 10 

f2 :: Integer -> Integer -> Integer
f2 n m  
                    |  m == 1 = n
                    | otherwise = n^ m + f2 n (m-1)

sumatoriaDoble :: Integer -> Integer -> Integer
sumatoriaDoble n m 
                  | n == 1 = f2 1 m 
                  |otherwise = f2 n m + sumatoriaDoble (n-1) m 

--16)
menorDivisor :: Integer -> Integer 
menorDivisor n 
              | mod n 2 == 0 = 2
              | mod n 3 == 0 = 3
              | otherwise = n 

nemorDivisor :: Integer -> Integer
menorDivisor n = menorDivisorHasta n 2

menorDivisorHasta :: Integer -> Integer -> Integer
menorDivisorHasta n m
                     | mod n m == 0 = m 
                     |otherwise = menorDivisorHasta n m+1
                     
              s

