#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    float lAnterior, lActual, consumo, costoBase, total;
    int tipoViv, numHab, altoConsumo, deuda;

    cout << "Lectura Anterior: "; cin >> lAnterior;
    cout << "Lectura Actual  : "; cin >> lActual;

    if (lActual < lAnterior) {
        cout << "ERROR: La lectura actual no puede ser menor a la anterior." << endl;
    } else {
        consumo = lActual - lAnterior;

        // Calculo por tramos (Precio A: 0.12, Precio B: 0.18)
        if (consumo <= 200) costoBase = consumo * 0.12;
        else costoBase = consumo * 0.18;

        cout << "Tipo Vivienda (1:Social, 2:Normal): "; cin >> tipoViv;
        cout << "Numero de habitantes: "; cin >> numHab;
        cout << "Alto consumo? (1:Si, 0:No): "; cin >> altoConsumo;
        cout << "Deuda pendiente? (1:Si, 0:No): "; cin >> deuda;

        total = costoBase;

        // Ajustes
        if (deuda == 1) total += (costoBase * 0.10);
        if (tipoViv == 1 && consumo < 100) total -= (costoBase * 0.20);

        cout << fixed << setprecision(2);
        cout << "\n--- DETALLE DE FACTURA ---" << endl;
        cout << "Consumo Total: " << consumo << " kWh" << endl;
        cout << "Costo Base   : $" << costoBase << endl;
        cout << "Total Final  : $" << total << endl;

        // Alertas preventivas
        if ((consumo / numHab) > 120) {
            cout << "ALERTA: Consumo excesivo por persona (>120 kWh)." << endl;
        }
        if (altoConsumo == 1 && consumo > 400) {
            cout << "RIESGO: Sobrefacturacion por equipos de alta potencia." << endl;
        }
    }
    return 0;
}
