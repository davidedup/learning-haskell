calcula _ [] = 0
calcula e (x:xs)
		| x == e = 1 + calcula e xs
		|otherwise =  calcula e xs
funcao::[Int] -> [Int] -> [Int] 
funcao [] _ = []
funcao (x:xs) c = [calcula x ([x] ++ c ++ xs) ] ++ funcao xs (c ++ [x]) 

main::IO()
main = do
	entrada <- getLine
	let r = funcao (read entrada) ([])
	print r