package main

import "fmt"

func verificarlogin(usuario, senha string) bool {
  
  if usuario == "senha" && senha == "admin"{
    return true
  } else {
    return false
  }
}

func main() {
  
  var usuario, senha string
  var acesso bool = false

   fmt.Println("Bem-vindo a verificação de Login")
    
  for !acesso {
   fmt.Println("Nome de usuário:")
   fmt.Scan(&usuario)

   fmt.Println("Senha:")
   fmt.Scan(&senha)
    acesso = verificarlogin(usuario,senha)

    if acesso == true {
      fmt.Println("Login efetuado com sucesso")
      break
    } else {
      fmt.Println("Usuário/senha incorretos, tente novamente.")
    }
  }
}
