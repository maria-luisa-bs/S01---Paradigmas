use std::io;

fn eh_par(numero: i32) -> bool
  {
  if numero % 2 == 0
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

fn main() 
  {
    println!("Jogador 01, escolha entre par ou ímpar:");
    
    let mut escolha = String::new();
    
    io::stdin()
      .read_line(&mut escolha)
      .expect("Falha ao ler entrada");
    let escolha = escolha.trim();

   println!("Jogador 01, escolha um numero:");
    
   let mut num1 = String::new();
    
   io::stdin()
    .read_line(&mut num1)
    .expect("Falha ao ler entrada");

  let num1: i32 = num1
    .trim()
    .parse()
    .expect("Por favor, digite um número válido");

  println!("Jogador 02, escolha um numero:");
    
  let mut num2 = String::new();
  io::stdin()
    .read_line(&mut num2)
    .expect("Falha ao ler entrada");

   let num2: i32 = num2
    .trim()
    .parse()
    .expect("Por favor, digite um número válido");

  let soma = num1 + num2;

  println!("A soma é: {}", soma);
    
  if eh_par(soma) == true && escolha == "par" 
  {
    println!("O vencedor é o Jogador 01!");
  }
  else if eh_par(soma) == false && escolha == "impar" 
  {
    println!("O vencedor é o Jogador 01!");
  }
  else if eh_par(soma) == false && escolha == "par"
  {
    println!("O vencedor é o Jogador 02!");
  }
  else if eh_par(soma) == true && escolha == "impar"
  {
    println!("O vencedor é o Jogador 02!");
  }
}
