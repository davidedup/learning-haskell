passou :: Float -> Float -> String
passou a b | ((a+b)/ 2) >= 7 = "pass: True!"
           | otherwise = "pass: False!"

main :: IO()
main = do
    nota1 <- getLine
    nota2 <- getLine
    putStrLn(passou (read nota1) (read nota2))
