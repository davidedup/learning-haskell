somanum :: Int -> Int
somanum n | (n == 0) = 0 
          | otherwise = n + (somanum (n-1))

somadosquadrados :: Int -> Int
somadosquadrados n | (n == 0) = 0
                   | otherwise = n ^ 2 + (somadosquadrados (n-1))

main :: IO()
main = do
    n <- getLine
    print (((somanum (read n)) ^ 2) - somadosquadrados (read n))