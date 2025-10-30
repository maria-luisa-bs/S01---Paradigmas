class Hunter
{
    constructor(nome,idade,lat,long)
  {
        this._nome = nome;
        this._idade = idade;
        this._localizacao = {lat, long};
  }

    rastrearLocal()
  {
        console.log(`[Hunter] ${this._nome} está na localização - Latitude ${this._localizacao.lat} e Longitude ${this._localizacao.long}.`);
  }
}

class Especialista extends Hunter
{
    constructor(nome,idade,lat,long,habilidadeNen)
  {  
        super(nome,idade,lat,long); 
        this._habilidadeNen = habilidadeNen;
  }
  
    rastrearLocal()
  {
        console.log(`[Especialista] ${this._nome} está na localização - Latitude ${this._localizacao.lat} e Longitude ${this._localizacao.long} - usando a habilidade: ${this._habilidadeNen}.`);
  }
}

class Manipulador extends Hunter
{
    constructor(nome, idade, lat, long, alvoAtual)
  {  
        super(nome, idade, lat, long); 
        this._alvoAtual = alvoAtual;
  }

    rastrearLocal()
  {
        console.log(`[Manipulador] ${this._nome} está na localização - Latitude ${this._localizacao.lat} eLongitude ${this._localizacao.long} - procurando por ${this._alvoAtual}.`);
  }
}

class Batalhao
{  
    #hunters;
    constructor()
  {
        this.#hunters = new Set();  
  }

    adicionarHunter(hunter)
  {  
        this.#hunters.add(hunter);
   }

    getNumHunters()
  {
        return this.#hunters.size;
  }

    iniciarRastreamento()
  {
        console.log("\nIniciando o rastreamento de batalhão!");
        for(const hunter of this.#hunters)
        {
            hunter.rastrearLocal();
        };  
    }
}

console.log("\nIniciando o rastreamento de batalhão!");
console.log("Listando hunters!")

const batalhao = new Batalhao(); 

const gon = new Hunter("Gon", 12, -23.5505, -46.6333);
const killua = new Hunter("Killua", 12, 35.6762, 139.6503);

const kurapika = new Especialista("Kurapika", 17, 40.7128, -74.0060, "Correntes de Julgamento");
const netero = new Especialista("Isaac", 110, 51.5074, -0.1278, "Bodhisattva");

const illumi = new Manipulador("Illumi", 24, 35.6762, 139.6503, "Killua");
const shalnark = new Manipulador("Shalnark", 26, 48.8566, 2.3522, "Genei Ryodan");


batalhao.adicionarHunter(gon);
batalhao.adicionarHunter(killua);
batalhao.adicionarHunter(kurapika);
batalhao.adicionarHunter(netero);
batalhao.adicionarHunter(illumi);
batalhao.adicionarHunter(shalnark);

console.log(`\nTotal de hunters no batalhão: ${batalhao.getNumHunters()}`);

batalhao.iniciarRastreamento();
