primeSum n k
 | n < 2      = False
 | k < 1      = False
 | k == 1     = isPrime n
 | otherwise  = primeSumRec primes n k


primeSumRec (x:xs) n k | x > n     = False 
                       | otherwise = primeSum (n-x) (k-1) || primeSumRec xs n k 

primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]

isPrime n = n `elem` [1,n]

main = do
  putStrLn $ show $ primeSum 9 3
  putStrLn $ show $ primeSum 1 1
  putStrLn $ show $ primeSum 3 1
  putStrLn $ show $ primeSum 9 3
  putStrLn $ show $ primeSum 9 4
