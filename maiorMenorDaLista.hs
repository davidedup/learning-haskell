maior :: [Int] -> Int
maior lista = maximum lista

main :: IO()
main = do
    entrada <- getLine
    let a = map (read :: String -> Int) (words entrada)
    print(maior a)