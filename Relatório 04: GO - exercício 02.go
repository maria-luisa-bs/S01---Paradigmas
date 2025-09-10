package main

import "fmt"

func main() {
	var numero int

	// Solicita ao usuário que digite um número
	fmt.Print("Digite um número inteiro: ")
	fmt.Scanln(&numero)

	// Usa o switch com o resto da divisão por 2
	switch numero % 2 {
	case 0:
		fmt.Println("O número", numero, "é par.")
	case 1:
		fmt.Println("O número", numero, "é ímpar.")
	}
}
