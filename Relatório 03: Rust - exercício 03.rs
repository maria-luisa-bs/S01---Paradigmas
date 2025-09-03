use std::io;

fn imprimir_tabuada(num: i32, lim_inf: i32, lim_sup: i32)
{
  for i in lim_inf..lim_sup+1
    {
    println!("{} x {} = {}", num, i, num*i);
  }
}

fn main()
{
  println!("Digite o numero da tabuada: ");
  
  let mut num = String::new();
  
   io::stdin()
    .read_line(&mut num)
    .expect("Falha ao ler entrada");

  let num: i32 = num
    .trim()
    .parse()
    .expect("Por favor, digite um número");

  println!("Digite o limite inferior: ");

  let mut lim_inf = String::new();
   io::stdin()
    .read_line(&mut lim_inf)
    .expect("Falha ao ler entrada");

  let lim_inf: i32 = lim_inf
    .trim()
    .parse()
    .expect("Por favor, digite um número");

  println!("Digite o limite superior: ");
  let mut lim_sup = String::new();
   io::stdin()
    .read_line(&mut lim_sup)
    .expect("Falha ao ler entrada");

  let lim_sup: i32 = lim_sup
    .trim()
    .parse()
    .expect("Por favor, digite um número");

  imprimir_tabuada(num, lim_inf, lim_sup);
}
