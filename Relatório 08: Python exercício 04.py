from abc import ABC,abstractmethod

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:
    def __init__(self,custo:int,funcao:str):
        self.custo = custo
        self.funcao = funcao

    def get_custo(self) -> int:
        return self.custo
    def set_custo(self, novo_custo: int):
        if novo_custo >= 0:
            self.custo = novo_custo
        else:
            self.custo = 0
    
    def get_funcao(self) -> str:
        return self.funcao
    
    def set_funcao(self, nova_funcao: str):
        self.funcao = nova_funcao
    
class NetRunner(Cibernetico):  
    def __init__(self,nome:str,implante:Implante):
        self.nome = nome
        self.implante = implante  
    def realizar_hack(self):
        return f"{self.nome} está fazendo um hack usando o implante função {self.implante.get_funcao()}!"
    
class Faccao:
    def __init__(self,nome:str,membros:list[Cibernetico]):
        self.nome = nome
        self.membros = membros

if __name__ == "__main__":
    print("Insira o número de NetRunners na facção:")

    quantidade_membros = int(input())

    membros : list[NetRunner] = []  

    for i in range(quantidade_membros):  
        print(f"Nome do NetRunner {i+1}:")
        nome_membro = input()
        print(f"Função do implante do NetRunner {i+1}:")
        funcao_implante = input()
        print(f"Qual o custo do implante do NetRunner {i+1}?")
        custo_implante = int(input())

        implante = Implante(custo_implante,funcao_implante)  

        netrunner = NetRunner(nome_membro,implante) 
        membros.append(netrunner) 

        print(f"NetRunner {nome_membro} adicionado com implante função {funcao_implante} e custo {custo_implante}.\n")

        print("Mandando hack!")
        for membro in membros:
            print(membro.realizar_hack())
