#include <bits/stdc++.h>
using namespace std;

class SerVivo
{
	protected:
		
	string nome;
		
	public:
		
SerVivo(string nome)
{
	this -> nome = nome;
}
	  
virtual void apresentar()
{ 
	cout << "O nome dessa especie e: " << nome << endl;
}	
};

class humano : public SerVivo
{
	public:
		
humano(string nome) : SerVivo(nome)
{ 
	this -> nome = nome;
}
	  
void apresentar()
{ 
	cout << nome << ": O ser humano é descendente dos primatas." << endl;
	cout << endl;
}
};

class elfo : public SerVivo
{ 
	public:
		
elfo(string nome) : SerVivo(nome)
{ 
	this -> nome = nome;
}

void apresentar()
{
	cout << nome << ": Os elfos possuem orelhas pontudas e magia." << endl;
	cout << endl;
}
};

class fada : public SerVivo
{ 
	public:
		
fada(string nome) : SerVivo(nome)
{
	this -> nome = nome;
}
	  
void apresentar()
{
	cout << nome << ": As fadas são seres mágicos." << endl;
	cout << endl;
}
};
 
int main()
{ 
	setlocale(LC_ALL, "Portuguese");
		
	SerVivo* s1 = new humano("Suki Silva");
	SerVivo* s2 = new elfo("Dobby");
	SerVivo* s3 = new fada("Wanda");
	
	list<SerVivo*> seresV;
	seresV.push_back(s1);
	seresV.push_back(s2);
	seresV.push_back(s3);
	
	for(list<SerVivo*>::iterator it = seresV.begin(); it != seresV.end(); it++)
	{ 
		(*it)->apresentar();
	}
	
	delete s1;
	delete s2;
	delete s3;
	
	return 0;
}
