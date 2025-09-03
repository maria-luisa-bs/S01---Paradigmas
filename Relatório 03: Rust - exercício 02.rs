use std::io;

fn eh_par(numero: i32) -> bool 
{
    numero % 2 == 0
}

fn main()
{
    println!("Jogador 01 escolha entre 'par' ou 'impar':");
    
    let mut escolha = String::new();
    
    io::stdin()
        .read_line(&mut escolha)
        .expect("Falha ao ler a escolha do Jogador 01");
    let escolha = escolha.trim().to_lowercase();

    
    println!("Jogador 01 digite o número que escolheu:");
    
    let mut entrada = String::new();
    
    io::stdin()
        .read_line(&mut entrada)
        .expect("Falha ao ler o número do Jogador 01");
    let num1: i32 = entrada.trim().parse().expect("Jogador 01, digite um número válido");

    println!("Jogador 02 digite o número que escolheu:");
    
    let mut entrada = String::new();
    
    io::stdin()
        .read_line(&mut entrada)
        .expect("Falha ao ler o número do Jogador 02");
    let num2: i32 = entrada.trim().parse().expect("Jogador 02, digite um número válido");

    let soma = num1 + num2;
    println!("A soma dos números escolhidos é igual a {}", soma);

   
    if eh_par(soma)
    {
        println!("O resultado da soma é par");
        if escolha == "par" 
        {
            println!("Vencedor é o Jogador 01");
        } 
        else 
        {
            println!("Vencedor é o Jodador 02");
        }
    }
    else
    {
        println!("O resultado da soma é ímpar");
        if escolha == "impar" 
        {
            println!("Vencedor é o Jogador 01");
        } 
        else 
        {
            println!("Vencedor é o Jodador 02");
        }
    }
}
