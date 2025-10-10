using System;
using System.Collections.Generic;

public class pokemon
{
	public string nome;
	
	public pokemon(string nome)
  {
		this.nome = nome;
	}
	
	public virtual void atacar()
  {
		Console.WriteLine("${nome} ataca!");
	}
}

public class pokemondefogo : pokemon
{
	public pokemondefogo(string nome) : base(nome) { 
	}
	
	public override void atacar()
  {
		Console.WriteLine($"{nome} lança chamas!");
	}
}

public class pokemondeagua : pokemon
{	
	public pokemondeagua(string nome) : base(nome) { 
	}
	
	public override void atacar()
  {
		Console.WriteLine($"{nome} jato de água!");
	}
}

public class program
{
	public static void Main()
	{
		List<pokemon> lista = new List<pokemon>();
		
		lista.Add(new pokemondefogo("Charizard"));
		lista.Add(new pokemonaeagua("Blastoise"));
				  
		foreach(pokemon p in lista)
    {
			p.atacar();
		}
		
	}
}
