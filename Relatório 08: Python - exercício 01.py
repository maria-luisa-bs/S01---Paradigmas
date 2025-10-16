from abc import ABC, abstractmethod 

class Personagem(ABC):
    def __init__(self, vida: int, resistencia: int):
        self.__vida = vida      
        self.__resistencia = resistencia

    def get_vida(self) -> int:
        return self.__vida

    def set_vida(self, nova_vida: int):
        if nova_vida >= 0:      
            self.__vida = nova_vida
        else:
            self.__vida = 0

    def get_resistencia(self):
        return self.__resistencia

    def set_resistencia(self, nova_resistencia):
        if nova_resistencia >= 0:  
            self.__resistencia = nova_resistencia
        else:
            self.__resistencia = 0
          
    def __str__(self):
        return f'Personagem com {self.__vida} de vida e com {self.__resistencia} de resistência.'
    
    @abstractmethod
    def atacar(self):
        pass

class Cavaleiro(Personagem):
  
    armadura_pesada = True

    def atacar(self):
        return "O cavaleiro ataca!"

    def __str__(self):
        return f'Personagem com {self.get_vida()} de vida'
    
    def info_cavaleiro(self):
        if self.armadura_pesada:
            return "Este personagem é um cavaleiro, e usa uma armadura pesada!"
        else:
            return "Este personagem é um cavaleiro, mas não possui armadura!"

if __name__ == "__main__":         

    print("Criação do personagem...\n")

    cavaleiro1 = Cavaleiro(100, 50)
    
    print(cavaleiro1)
    print(cavaleiro1.atacar())
    print(cavaleiro1.info_cavaleiro())
