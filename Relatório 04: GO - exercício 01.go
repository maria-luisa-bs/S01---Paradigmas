package main

import "fmt"
	// as chaves tem que ficar na mesma linha da função, ou o código não roda
func classificar_numero(num int) string {
	if num > 0 {
		return "positivo"
	} else if num < 0 {
		return "negativo"
	} else {
		return "zero"
	}
}

func main() {
	var numero int

	fmt.Print("Digite um número: ")
	fmt.Scanln(&numero)

	resultado := classificar_numero(numero)
	fmt.Println("O número é", resultado)
}
