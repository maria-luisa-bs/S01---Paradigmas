#include <iostream>
using namespace std;

class Pessoa
{
	protected:
		
	string nome;
		
	public:
		
Pessoa(string nome)
{
	this -> nome = nome;
}
		
virtual void apresentar() 
{
	cout << "Olá! Eu me chamo " << nome << " e eu sou uma pessoa." << endl;
}	
};

class Professor : public Pessoa
{
	protected:
		
	string disciplina;
	
	public:
		
Professor(string nome, string disciplina) : Pessoa(nome)
{
	this -> nome = nome;
    this -> disciplina = disciplina;
}
		
void apresentar()
{ // nn coloquei o override pq ele nao ta funcionando no Falcon, mas a sobreescrição funciona
	cout << "Olá turma! Eu me chamo " << nome << " e sou professor de " << disciplina << "." << endl;
	}	
};

class Aluno : public Pessoa 
{
	protected:
		
	string curso;
	int mat;
		
	public:
		
Aluno(string nome, string curso, int mat) : Pessoa(nome)
{
	this -> nome = nome;
	this -> curso = curso;
	this -> mat = mat;
}
		
 void apresentar()
 {  
	cout << "Olá! Eu me chamo " << nome << " e eu sou aluna de " << curso << "." << endl;
}		
};
 
int main()
{
	setlocale(LC_ALL, "Portuguese");
	
	Pessoa* prof = new Professor("Estevan", "Cálculo 2");
	Pessoa* aluno = new Aluno("Malu", "Software", 701);
	
	prof -> apresentar();
	aluno -> apresentar();
	
	delete prof;
	delete aluno;
	
	return 0;
}
