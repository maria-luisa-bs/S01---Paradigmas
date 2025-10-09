using System;
using System.Collections.Generic;

public class membrodasociedade
{
	private string nome;
	private string raca;
	private string funcao;
	
	public membrodasociedade(string nome, string raca, string funcao)
{ 
		this.nome = nome;
		this.raca = raca;
		this.func = funcao;
}
	
	public void descrever()
  { 
		Console.WriteLine($"{raca}, {funcao}"); 
	}  
}

public class Program
{ 
  
	public static void Main()
	{
		membrodasociedade membro1 = new membrodasociedade("Aragorn", "Humano", "Guardiao");
		membrosasociedade membro2 = new membrodasociedade("Legolas", "Elfo", "Arqueiro");
		
		membro1.descrever();
		membro2.descrever();
	}
  
}
