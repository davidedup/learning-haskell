binario :: Int -> String
binario n | (n == 1) = "1"
          | otherwise =  binario (div n 2) ++ show (rem n 2)  

main :: IO()
main = do
    n <- getLine
    putStrLn (binario (read n))


main :: IO()
main = do
    n <- getLine
    putStrLn (diferenca (read n))
