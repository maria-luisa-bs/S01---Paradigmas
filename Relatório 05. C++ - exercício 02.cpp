#include <iostream>
using namespace std;

float somararray(float arr[], int tamanho) 
{
    float soma = 0;
    int i = 0;
    
    for (i = 0; i < tamanho; i++) 
	{
        soma = soma + arr[i];
    }
    return soma;
}

int main() 
{
    int tamanho;
    int i = 0;
    float resultado;

    cout << "Digite o tamanho do array: " << endl;
    cin >> tamanho;

    float arr[tamanho]; 

    cout << "Digite os " << tamanho << " valores: ";
    
    for (i = 0; i < tamanho; i++) 
	{
        cin >> arr[i];
    }

    resultado = somararray(arr, tamanho);

    cout << "Soma dos array = " << resultado << endl;

    return 0;
}
