frequencia :: [Int] -> [Int] -> [Int]
frequencia x [] = []
frequencia l (x:xs) = [freq x l] ++ frequencia l xs


freq :: Int -> [Int] -> Int
freq n [] = 0
freq n (x:xs) | n == x = 1 + freq n xs
              | otherwise = freq n xs

main :: IO()
main = do
    a <- getLine
    let lista = read a
    print (frequencia lista lista)
