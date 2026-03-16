#include <iostream>

using namespace std;

int main() {
    // Inventario limitado del cajero
    int s20 = 5, s10 = 10, s5 = 20, s1 = 50;
    float saldoUsuario = 1000.0;
    float monto;

    cout << "--- CAJERO AUTOMATICO ---" << endl;
    cout << "Ingrese monto a retirar: "; cin >> monto;

    // Validacion de fondos
    float efectivoCajero = (s20*20) + (s10*10) + (s5*5) + (s1*1);

    if (monto <= 0 || monto > saldoUsuario || monto > efectivoCajero) {
        cout << "Operacion rechazada: Fondos insuficientes o monto invalido." << endl; //
    } else {
        int tempMonto = (int)monto;
        int e20=0, e10=0, e5=0, e1=0;

        // Logica de billetes
        e20 = tempMonto / 20;
        if (e20 > s20) e20 = s20;
        tempMonto -= (e20 * 20);

        e10 = tempMonto / 10;
        if (e10 > s10) e10 = s10;
        tempMonto -= (e10 * 10);

        e5 = tempMonto / 5;
        if (e5 > s5) e5 = s5;
        tempMonto -= (e5 * 5);

        e1 = tempMonto / 1;
        if (e1 > s1) e1 = s1;
        tempMonto -= (e1 * 1);

        // Verificacion de monto exacto
        if (tempMonto == 0) {
            cout << "RETIRO EXITOSO:" << endl;
            cout << "Billetes $20: " << e20 << endl; //
            cout << "Billetes $10: " << e10 << endl;
            cout << "Billetes $5: " << e5 << endl;
            cout << "Billetes $1: " << e1 << endl;
            cout << "Saldo restante: $" << saldoUsuario - monto << endl; // [cite: 134]
        } else {
            cout << "Error: No se puede entregar la cantidad exacta con el stock actual." << endl;
        }
    }

    return 0;
}
