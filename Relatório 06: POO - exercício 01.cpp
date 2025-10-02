#include <iostream>
using namespace std;

class personagem
{
	public:
	
	string nome;
	int nivel;
	int dano;
	int hp;
		
// parte para contruir o personagem	
personagem(string nome, int nivel, int dano, int hp)
{
	this-> nome = nome;
	this-> nivel = nivel;
	this-> dano = dano;
	this-> hp = hp;
}		

// parte que sai as mensagens de ação 
void atacar(personagem& atacado)
{ 
	cout << nome << " ataca " << atacado.nome << "!" << endl;
	atacado.hp = atacado.hp - dano;
	cout << "A vida de " << atacado.nome << " caiu para " <<atacado.hp << "!" << endl;
}	

// parte em que as informações vão sair 	
void printInfo()
{
	cout << "Personagem: " << nome << endl;
	cout << "Nível: " << nivel << endl;
	cout << "Dano recebido: " << dano << endl;
	cout << "Vida do personagem: " << hp << endl;
}
};

int main()
{
	setlocale(LC_ALL, "Portuguese");
	
	// parte que vamos atribuir as informações dos personagens 
	personagem P1("Malu", 9, 6, 36);
	personagem P2("Aranha", 7, 8, 29);
	
	P1.printInfo();
	cout<<endl;
	
	P2.printInfo();
	cout<<endl;
	
	P1.atacar(P2);
	cout << endl;
	
	P1.printInfo();
	cout << endl;
	
	P2.printInfo();
	cout << endl;
	
	return 0;
}
