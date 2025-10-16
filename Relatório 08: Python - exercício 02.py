from abc import ABC, abstractmethod

class Heroi(ABC):
    
    def __init__(self, nome: str, funcao: str, ultimate: str = ""):
        self.__nome = nome
        self.__funcao = funcao
        self.__ultimate = ultimate
    
    def get_nome(self) -> str: 
        return self.__nome

    def set_nome(self, novo_nome: str): 
        self.__nome = novo_nome

    def get_funcao(self) -> str:
        return self.__funcao

    def set_funcao(self, nova_funcao: str):
        self.__funcao = nova_funcao

    def get_ultimate(self) -> str:
        return self.__ultimate

    def set_ultimate(self, nova_ultimate: str):
        self.__ultimate = nova_ultimate

    @abstractmethod
    def usar_ultimate(self):
        pass

class Tanque(Heroi):
    
    def usar_ultimate(self):
        return f"{self.get_nome()} usa ultimate: {self.get_ultimate()}."

class Dano(Heroi):
    
    def usar_ultimate(self):
        return f"{self.get_nome()} usa ultimate: {self.get_ultimate()}."


if __name__ == "__main__":
    print("Insira o nome do tanque e a ultimate:")
    nome_tanque = input("Nome do tanque: ")
    ultimate_tanque = input("Ultimate do tanque: ")
    
    Tanque1 = Tanque(nome_tanque, "Tanque", ultimate_tanque)
    print(f"{Tanque1.get_nome()} é um {Tanque1.get_funcao()}.\n")
          
    print("Insira o ultimate e o nome do herói de dano:")
    nome_dano = input("Nome do herói de dano: ")
    ultimate_dano = input("Ultimate do herói: ")
   
    Dano1 = Dano(nome_dano, "Dano", ultimate_dano)
    print(f"{Dano1.get_nome()} é um {Dano1.get_funcao()}.\n")
          
    herois: list[Heroi] = [Tanque1, Dano1]
    for heroi in herois:
        print(heroi.usar_ultimate())
