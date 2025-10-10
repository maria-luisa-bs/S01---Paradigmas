using System;
using System.Collections.Generic;  

class Feitico      
{
    public string nome = string.Empty;  
}

class Grimorio  
{
    private List<Feitico> feiticos = new List<Feitico>();  
       
    public void AdicionarFeitico(Feitico feitico)
    {
        feiticos.Add(feitico);
    }
}

class Ferramenta
{
    public string item = string.Empty;

    public Ferramenta(string item)
    {
        this.item = item;
    }
}

class Maga        
{
    public Grimorio grimorio { get; set; }      
                                               
    public List<Ferramenta> ferramentas { get; set; }

    public Maga(List<Ferramenta> ferramentasExternas)    
    {
        grimorio = new Grimorio(); 
        ferramentas = ferramentasExternas;  
    }
}


class ProgramExer3
{
    public static void Main()
    {
        List<Ferramenta> ferramentas = new List<Ferramenta>(); 
        ferramentas.Add(new Ferramenta("Capacete"));
        ferramentas.Add(new Ferramenta("Espada"));  
        ferramentas.Add(new Ferramenta("Escudo"));
        
        Maga frieren = new Maga(ferramentas);

        Feitico feitico1 = new Feitico { nome = "Mar de fogo" };
        Feitico feitico2 = new Feitico { nome = "Cura instantanea" };
        Feitico feitico3 = new Feitico { nome = "Agilidade" };
        
        frieren.grimorio.AdicionarFeitico(feitico1);
        frieren.grimorio.AdicionarFeitico(feitico2);
        frieren.grimorio.AdicionarFeitico(feitico3);

        Console.WriteLine("Ferramentas agregadas:");
        foreach (var ferramenta in frieren.ferramentas) {
                Console.WriteLine("- " + ferramenta.item);
        }
    }
}
