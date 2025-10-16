from abc import ABC, abstractmethod

class ArmaCorpoaCorpo:
  
    def __init__(self, nome: str, dano: int):

        self.nome = nome
        self.dano = dano

        def get_nome(self) -> str:
            return self.nome
        def set_nome(self, novo_nome: str):
            self.nome = novo_nome
        def get_dano(self) -> int:
            return self.dano
          
class Membro:
    def __init__(self, nome: str, arma: str):
        self.nome = nome
        self.arma = arma

class PhantomThieves():         
    def __init__(self, nome: str, arma: str):
        self.nome = nome
        self.arma = arma

class Joker:
    def __init__(self, nome: str, arma_nome: str, arma_dano: int, equipe: list[PhantomThieves]):
        self.nome = nome
        self.arma = ArmaCorpoaCorpo(arma_nome, arma_dano)  
        self.equipe = equipe 
    
    def mostrar_equipe(self):
        print(f"Equipe de {self.nome}:")
        for membro in self.equipe:
            print(f"- {membro.nome} com a arma {membro.arma}!")

if __name__ == "__main__":
    print("\n Equipe Phantom Thieves! \n")
    print("Insira quantidade de membros dos Phantom Thieves:")
    
    quantidade_membros = int(input())

    membros: list[PhantomThieves] = []    

    for i in range(quantidade_membros): 
        print(f"Insira o nome do membro da sua equipe {i+1}:")
        nome_membro = input()
        print(f"Insira a arma do membro {i+1}:")
        arma_membro = input()
        membros.append(PhantomThieves(nome_membro, arma_membro))

    joker = Joker("Joker", "Baru", 70, membros)
    
    print(f"\n{joker.nome} possui {joker.arma.nome} que causa {joker.arma.dano} de dano ao oponente!")
    
    joker.mostrar_equipe()
