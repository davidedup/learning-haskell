menor :: [Int] -> Int -> Int
menor [] n = n
menor (x:xs) n | x < n = menor xs x
               | otherwise = menor xs n

main :: IO()
main = do
    a <- getLine
    let lista = read a
    print ( menor lista (lista!!0) )
    