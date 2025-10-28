class Pokemon
{
    constructor(nome,tipo,vidaInicial)
  {
        this.nome = nome;
        this.tipo = tipo;           
        this._vidaInicial = vidaInicial; 
  }

    getVida()
  {
        return this._vidaInicial;
  }

    receberDano(dano)
  {
        console.log(`${this.nome} foi atacado ${dano} recebeu de dano!`);
  }

    atacar()
  {
        console.log(`${this.nome} está atacando!`);
  }
}

class PokemonAgua extends Pokemon
{
    constructor(nome,vidaInicial,curaBase)
  {
        super(nome, "Água", vidaInicial);
        
        this._curaBase = curaBase;
  }

    atacar()
  {
        console.log(`${this.nome} está atacando com seu poder de água!`)
  }
}

class PokemonFogo extends Pokemon
{
    constructor(nome,vidaInicial,bonus)
  {
        super(nome, "Fogo", vidaInicial);
        
        this.bonus = bonus; 
  }

    atacar()
  {
        console.log(`${this.nome} está atacando com seu poder de fogo!`)
  }
}

console.log("POKEMONS");

let nomePokemon1 = "Squirtle";
let vidaPokemon1 = 100;
let curabase = 25;

let nomePokemon2 = "Charmander";
let vidaPokemon2 = 90;
let bonus = 15;

console.log(`\nPokemon de Água: ${nomePokemon1}`);
let pokemon1 = new PokemonAgua(nomePokemon1, vidaPokemon1, curabase);
console.log(`Nome: ${pokemon1.nome}, Tipo: ${pokemon1.tipo}, Vida: ${pokemon1.getVida()}`);

console.log(`\nPokemon de Fogo: ${nomePokemon2}`);
let pokemon2 = new PokemonFogo(nomePokemon2, vidaPokemon2, bonus);
console.log(`Nome: ${pokemon2.nome}, Tipo: ${pokemon2.tipo}, Vida: ${pokemon2.getVida()}`);

console.log("\nATAQUES");
[pokemon1, pokemon2].forEach(pokemon => {
    pokemon.atacar();
});

console.log("\nRECEBENDO DANO");
pokemon1.receberDano(5);
pokemon2.receberDano(10);
