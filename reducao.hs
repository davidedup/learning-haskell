soma :: String -> Int
soma [] = 0
soma (x:xs) = (read [x]) + soma xs   

reduz :: String -> Int
reduz num | length num == 1 = read num 
          | otherwise = reduz $ show(soma num)

aux :: String -> String -> Int
aux a b | reduz a > reduz b = 1
        | reduz a == reduz b = 0
        | otherwise = 2

main :: IO()
main = do
    a <- getLine
    b <- getLine

    print (aux a b)
    