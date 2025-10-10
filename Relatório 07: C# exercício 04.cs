using System; 

abstract class MonstroSombrio
{
    public string nome = string.Empty;

    public abstract void Mover();
}

class Zumbi : MonstroSombrio
{
    public Zumbi()
    {
        nome = "Zumbi";         
    }

    private int velocidade = 5; 

    public override void Mover()
    {
        Console.WriteLine("O zumbi se move devagar!");
        Console.WriteLine("Velocidade do Zumbi: " + velocidade);
    }
}

class Espectro : MonstroSombrio
{
    private int velocidade = 10; 
    
    public Espectro()
    {
        nome = "Espectro";  
    }

    public override void Mover()
    {
        Console.WriteLine("O espectro se move sem fazer barulho!");
        Console.WriteLine("Velocidade do Espectro: " + velocidade);
    }
}

class ProgramExer2
{
    public static void Main()
    {
        MonstroSombrio[] monstros = new MonstroSombrio[2];
        monstros[0] = new Zumbi();
        monstros[1] = new Espectro();

        foreach (var monstro in monstros)
        {
            monstro.Mover();
        }
    }
}  
