#include <iostream>
using namespace std;

int main() 
{
    int quantidade;
    float nota;
	int soma = 0;
	float media;

    cout << "Digite quantas notas deseja inserir: ";
    
    cin >> quantidade;

    for (int i = 1; i <= quantidade; i++) 
	{
        cout << "Digite a nota: ";
        
        cin >> nota;

        while (nota < 0 || nota > 10) 
		{
            cout << "Nota invalida! Digite novamente (0 a 10): ";
            cin >> nota;
        }

        soma = soma + nota;
    }

    media = soma / quantidade;

    if (media >= 7) 
	{
        cout << "Aluno Aprovado!" << endl;
    } 
	else 
	{
        cout << "Aluno Reprovado!" << endl;
    }
    
    cout << "Media final = " << media << endl;

    return 0;
}
