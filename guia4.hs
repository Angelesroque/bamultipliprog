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
            

