class Diario
{
    #enigmas;
    #criaturasAvistadas; 

    constructor(autor)
  {
        this._autor = autor;
        this.#criaturasAvistadas = [];  
        this.#enigmas = new Map(); 
  }
  
    getAutor()
  {
        return this._autor;
  }

    adicionarCriatura(criatura)
  {
        this.#criaturasAvistadas.push(criatura);  
  }

 adicionarEnigma(numero, enigma)
  {    
       this.#enigmas.set(numero,enigma);  
  }

    decodificarEnigma(chave,num)
  {
        if(chave != this._autor)
        {
            console.log("Acesso negado!");
            return null;
        }
        else
        {
            if(this.#enigmas.has(num) === false)
            {
                console.log("Enigma não encontrado!"); 
                return null;
            }
            else
            {
                return this.#enigmas.get(num); 
            }
        }
        
    }

}

class Criatura
{
    constructor(nome,perigosa)
  {
        this.nome = nome;
        this.perigosa = perigosa;  
  }
}

class Personagem
{
    constructor(nome, idade)
  {
        this.nome = nome;
        this.idade = idade;   
  }
}

class Protagonista extends Personagem
{
    #diario3;
    
    constructor(nome, idade)
  {
        super(nome, idade); 
        this.#diario3 = new Diario("Stanford");
  }
}

class CabanaMistério
{
    personagens = [];  
    funcionarios = []; 
    visitantes = [];  

    constructor(diario)
  {
        this.diario = diario;
  }

    listarFuncionarios()
  {   
        console.log("\nLista de Funcionários");
        return this.funcionarios;  
  }
}

const diarioStanford = new Diario("Stanford"); 

const billCipher = new Criatura("Bill", true);
const gremloblin = new Criatura("Gremloblin", true);
const summerween = new Criatura("Summerween", true);

const gnomo = new Criatura("Gnomo", false);
const manotaur = new Criatura("Manotaur", false);

console.log("\nDiário de Stanford");
console.log(`Autor: ${diarioStanford.getAutor()}`); 

console.log("\nAdicionando criaturas ao diário");
console.log("Criatura 1 : Bill - criatura perigosa");
console.log("Criatura 2 : Gremloblin - criatura perigosa");
console.log("Criatura 3 : Summerween - criatura perigosa");
console.log("Criatura 4 : Gnomo - criatura inofensiva");
console.log("Criatura 5 : Manotaur - criatura inofensiva");
diarioStanford.adicionarCriatura(billCipher);
diarioStanford.adicionarCriatura(gremloblin);
diarioStanford.adicionarCriatura(summerween);
diarioStanford.adicionarCriatura(gnomo);
diarioStanford.adicionarCriatura(manotaur);

console.log("Stanford cria os enigmas no diário!");

diarioStanford.adicionarEnigma(1, "Enigma do Bill: um riângulo dos sonhos");
diarioStanford.adicionarEnigma(2, "Enigma do Gremloblin: uma criatura da caverna");
diarioStanford.adicionarEnigma(3, "Enigma do Summerween: doces amaldiçoados");
diarioStanford.adicionarEnigma(4, "Enigma do Gnomo: seres misteriosos da floresta");
diarioStanford.adicionarEnigma(5, "Enigma do Manotaur: força");

const Dipper = new Protagonista("Dipper Pines",12);

const cabana = new CabanaMistério(diarioStanford);
const Mabbel = new Personagem("Mabbel Pines", 13);
const Soos = new Personagem("Soos Ramirez", 24);
const Wendy = new Personagem("Wendy Corduroy", 17);
const weddles = new Personagem("Weddles", 35);
const Stan = new Personagem("Stanley Ford", 62);

cabana.personagens.push(Dipper);
cabana.personagens.push(Mabbel);
cabana.personagens.push(Soos);
cabana.personagens.push(Wendy);
cabana.personagens.push(weddles);
cabana.personagens.push(Stan);

const visitantesGenericos = ["Tourist1", "Tourist2", "Tourist3"];
cabana.visitantes.push(...visitantesGenericos); 

cabana.funcionarios.push(Soos);
cabana.funcionarios.push(Wendy);
cabana.funcionarios.push(Stan);

console.log("\nDipper encontra o diário e tenta decodificar os enigmas");

console.log("\nTentativa de decodificação com autor incorreto:");
let enigmaIncorreto = diarioStanford.decodificarEnigma("Mabel Pines", 1);

console.log("\nDipper decodfica os enigmas com o autor correto:");
for(let i = 1; i <=5; i++){
    let enigmacorreto = diarioStanford.decodificarEnigma("Stanford",i);
    console.log(`Enigma ${i}: ${enigmacorreto}`);
}

console.log("\nFuncionários da Cabana");
cabana.funcionarios.forEach(funcionario => {
    console.log(`Funcionário: ${funcionario.nome}, Idade: ${funcionario.idade}`);
});
