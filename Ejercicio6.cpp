#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    int numEst, destino, dias, mismaFac, reqCoord;
    float precioDia, subtotal, descGrupo = 0, descFac = 0, costoCoord = 0, total;

    cout << "--- PLANIFICADOR DE VIAJES ---" << endl;
    cout << "Seleccione Destino (1:Costa, 2:Sierra, 3:Oriente): "; cin >> destino;
    cout << "Numero de estudiantes: "; cin >> numEst;
    cout << "Dias de estancia: "; cin >> dias;
    cout << "Misma facultad? (1:Si, 0:No): "; cin >> mismaFac;
    cout << "Incluir coordinador? (1:Si, 0:No): "; cin >> reqCoord;

    // Asignacion de precio base
    if (destino == 1) precioDia = 45.0;
    else if (destino == 2) precioDia = 55.0;
    else precioDia = 65.0;

    subtotal = numEst * dias * precioDia;

    // Calculo de descuentos por volumen
    if (numEst > 25) descGrupo = subtotal * 0.10;
    else if (numEst >= 15) descGrupo = subtotal * 0.05;

    // Evaluacion del coordinador
    if (reqCoord == 1 && numEst <= 20) {
        costoCoord = dias * precioDia;
    }

    total = subtotal - descGrupo + costoCoord;

    // Aplicacion de descuento por facultad
    if (mismaFac == 1) {
        descFac = total * 0.07;
        total -= descFac;
    }

    cout << fixed << setprecision(2);
    cout << "--- PRESUPUESTO FINAL ---" << endl;
    cout << "Subtotal Estudiantes: $" << subtotal << endl;
    cout << "Descuento por Grupo : -$" << descGrupo << endl;
    cout << "Costo Coordinador   : $" << costoCoord << " " << (reqCoord && numEst > 20 ? "(GRATIS)" : "") << endl;
    cout << "Descuento Facultad  : -$" << descFac << endl;
    cout << "---------------------------" << endl;
    cout << "TOTAL DEL GRUPO     : $" << total << endl;
    cout << "COSTO POR PERSONA   : $" << total / numEst << endl;

    return 0;
}
