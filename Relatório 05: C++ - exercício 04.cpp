#include <iostream>
using namespace std;

double CF(double C) 
{
    return (C * 9.0 / 5.0) + 32.0;
}

double CK(double C) 
{
    return C + 273.15;
}

int main() 
{
    int opcao;
    double celsius;

    do {
        cout << "1 - Converter Celsius para Fahrenheit" << endl;
        cout << "2 - Converter Celsius para Kelvin" << endl;
        cout << "3 - Sair" << endl;
        
        cout << "Escolha uma opcao: ";
        
        cin >> opcao;

        switch (opcao) 
		{
            case 1:
                cout << "Temperatura em Celsius: ";
                cin >> celsius;
                
                cout << "Temperatura em Fahrenheit: " 
                     << CF(celsius) << " F" << endl;
                break;

            case 2:
                cout << "Temperatura em Celsius: ";
                cin >> celsius;
                
                cout << "Temperatura em Kelvin: " 
                     << CK(celsius) << " K" << endl;
                break;

            case 3:
                cout << "Programa encerrado" << endl;
                break;

            default:
                cout << "Opcao invalida, tente novamente";
        }

    } while (opcao != 3);

    return 0;
}
