reduz [] x 
	    | x < 10 = x
	    |otherwise = reduz (show x) 0  
reduz (e:es) x  =   reduz es ( x + read [e])  			

compara x y 
		| x > y = 1
		| x < y = 2
		| otherwise = 0

main::IO()
main = do
	(x:xs) <- getLine
	(y:ys) <- getLine 
	let a = compara (reduz (x:xs) 0) (reduz (y:ys) 0) 
	print a