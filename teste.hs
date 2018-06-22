verifica :: String -> String
verifica op = if(op == "+" || op == "-" || op == "*" || op == "/" ) then "okay" else "invalida"

divisao :: Float -> Float -> String
divisao a b | (b == 0) = "divisão por zero"
            | otherwise = show(a / b)

calcula :: String -> Float -> Float -> String
calcula op a b  | (op == "+") = show(a + b)
                 | (op == "-") = show(a - b)
                 | (op == "*") = show(a * b)
                 | otherwise = divisao a b

main :: IO()
main = do 
    op <- getLine
    if( (verifica op) == "okay") then do {a <- getLine ; b <- getLine ; putStrLn(  calcula op (read a) (read b)  )} else putStrLn("invalido")
