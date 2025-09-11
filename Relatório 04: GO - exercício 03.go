package main

import "fmt"

func fibonacci(n int) int {
	
	var a,b int = 0,1
	var c int
	
	if n <= 0 {
		fmt.Println("Número inválido, tente um maior que zero")
	}else if n == 1 {
		fmt.Println(a)
	}else{
		fmt.Println("Sequencia de Fibonacci:")
		fmt.Print(a, " ", b)
		for i := 2; i < n; i++ {
			c = a + b
			fmt.Print(" ", c)
			a, b = b, c
		}
	}
	return 0
}

func main() {
	fmt.Println("Indique o número de termos da sequência de Fibonacci:")
	var n int
	
	fmt.Scan(&n)
	
	fibonacci(n)
}
