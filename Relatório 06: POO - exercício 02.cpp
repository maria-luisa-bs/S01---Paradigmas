#include <iostream>
using namespace std;

class pessoa
{
	private:
		
	string nome;
	int idade;
	
	public:
		
pessoa(string nome, int idade) 
{
	this -> nome = nome;
	this -> idade = idade;
}

string getNome()
{
	return nome;
}	
	
int getIdade()
{
	return idade;
}
};

class protagonista : public pessoa
{
	private:
		
	int nivel;
	
	public:	
	
protagonista(string nome, int nivel, int idade) : pessoa(nome, idade)
{
	this -> nivel = nivel;
} 
		 
void imprimirInfo() 
{
	cout << "Protagonista: " << getNome() << ", Nível: " << nivel << endl;
}
};

class personagem : public pessoa
{
	private:
		
	int rank;
	
	public:	
	
personagem(string nome, int rank, int idade) : pessoa(nome, idade)
{
	this -> rank = rank;
}
	
void imprimirInfo() 
{
    cout << "Personagem: " << getNome() << ", Rank: " << rank << endl;
}
};

int main()
{
	setlocale(LC_ALL, "Portuguese");
	
	protagonista P1("Malu", 3, 18);
	personagem npc1("Suki", 8, 23);
	
	P1.imprimirInfo();
    npc1.imprimirInfo();
	
	return 0;
}
