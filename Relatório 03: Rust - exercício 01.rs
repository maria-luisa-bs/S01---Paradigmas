use std::io;

fn verificar_senha(senha: &str) -> bool 
{
    if senha.len() < 8
    {
        return false;
    }

    let mut numero = false;
    let mut maiuscula = false;

    for c in senha.chars() 
    {
        if c.is_digit(10) 
        {
            numero = true;
        }
        if c.is_ascii_uppercase() 
        {
            maiuscula = true;
        }
    }

    numero && maiuscula
}

fn main()
{
    loop
    {
        println!("Digite uma senha:");

        let mut entrada = String::new();
        
        io::stdin()
            .read_line(&mut entrada)
            .expect("Falha ao ler entrada");

        let senha = entrada.trim();

        if verificar_senha(senha)
        {
            println!("Senha válida");
            break; 
        }
        else 
        {
            println!("Senha inválida");
        }
    }
}
