class Soldado
{
    constructor(nome, modeloGear) 
  {
        this.nome = nome;
  
        this._gear = new ODM_gear(modeloGear, 100);
   }

    explorarTerritorio() 
  {  
        console.log(`${this.nome} está patrulhando!`);
        
        if (this._gear.usarGas(10)) 
        {
            return `${this.nome} explorado com sucesso!`;
        } 
        else 
        {
            return `${this.nome} não pode explorar.`;
        }
    }

    verificarEquipamento()
  {
        const status = `[${this.nome}] Gás restante: ${this._gear.getGas()}`;
        return status;
  }
}

class Esquadrão 
{
    constructor(lider, membrosIniciais = []) 
  {
        this.lider = lider;
    
        this.membrosIniciais = membrosIniciais;
  }

    adicionarMembro(soldado) 
  {
        console.log(`\n[Esquadrão] Adicionando ${soldado.nome} ao esquadrão.`);
        this.membrosIniciais.push(soldado);
  }

    relatarStatus() 
  {
        console.log(`\nFormação do Esquadrão (Líder: ${this.lider.nome})`);
        const statusArray = this.membrosIniciais.map(membro => {
            const statusMembro = membro.verificarEquipamento();
            console.log(statusMembro);
            return statusMembro;
    });
      
    }

    explorarTerritorio() 
  {
        console.log(`\nIniciando exploração!`);
        this.membrosIniciais.forEach(membro => {
            membro.explorarTerritorio(); 
  });
      
    }
}

class ODM_gear 
{
   
    constructor(modelo, gasRestante)
  {
        this.modelo = modelo;
        this._gasRestante = gasRestante;
  }

    usarGas(quantidade) 
  {
        if (quantidade <= this._gasRestante) 
        {
            this._gasRestante -= quantidade;
            console.log(`[ODM_Gear] Usou ${quantidade} de gás. Restam ${this._gasRestante}.`);
            return true;
        }
        console.log(`[ODM_Gear] Gás insuficiente!`);
        return false;
  }

    getGas() 
  {   
        return this._gasRestante;
  }
}

const Suki = new Soldado("Suki", "Modelo Padrão");
const Gon = new Soldado("Gon", "Modelo Avançado");
const Killua = new Soldado("Killua", "Modelo Leve");

const esquadraoSuki = new Esquadrão(Suki, [Suki, Gon, Killua]);

esquadraoSuki.relatarStatus();

esquadraoSuki.explorarTerritorio();

esquadraoSuki.relatarStatus();
