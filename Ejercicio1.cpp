#include <iostream>
#include <string>

using namespace std;

int main() {
    bool traeCredencial, perteneceCurso;
    int minutosTarde, faltas;

    cout << "--- Control de Acceso ---" << endl;
    cout << "Trae credencial? (1:Si, 0:No): ";
    cin >> traeCredencial;
    cout << "Pertenece al curso? (1:Si, 0:No): ";
    cin >> perteneceCurso;
    cout << "Minutos tarde: ";
    cin >> minutosTarde;
    cout << "Faltas acumuladas: ";
    cin >> faltas;

    if (!traeCredencial || !perteneceCurso) {
        cout << "Estado: NO PUEDE INGRESAR" << endl;
        cout << "Motivo: Incumplimiento de credenciales o curso" << endl;
        cout << "Prioridad: Alta" << endl;
    }
    else if (faltas >= 5 || minutosTarde > 10) {
        cout << "Estado: NO PUEDE INGRESAR" << endl;
        cout << "Motivo: Limite de faltas o retraso excedido" << endl;
        cout << "Prioridad: Alta" << endl;
    }
    else if (minutosTarde > 0 || faltas >= 3) {
        cout << "Estado: INGRESA CON ADVERTENCIA" << endl;
        cout << "Motivo: Tardanza leve o faltas acumuladas (3-4)" << endl;
        cout << "Prioridad: Media" << endl;
    }
    else {
        cout << "Estado: INGRESA SIN PROBLEMA" << endl;
        cout << "Motivo: Estudiante puntual y al dia" << endl;
        cout << "Prioridad: Baja" << endl;
    }

    return 0;
}
