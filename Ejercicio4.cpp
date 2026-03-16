#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    int numHojas, tipo, perfil, horario, llevaAnillado;
    double precioHoja, subtotal, descuento = 0, recargo = 0, anillado = 0, total;

    cout << "--- COPIADORA UNIVERSITARIA ---" << endl;
    cout << "Hojas a imprimir: "; cin >> numHojas;
    cout << "Tipo (1: B/N, 2: Color): "; cin >> tipo;
    cout << "Perfil (1: Estudiante, 2: Docente): "; cin >> perfil;
    cout << "Horario (1: Normal, 2: Nocturno): "; cin >> horario;
    cout << "Anillado (1: Si, 0: No): "; cin >> llevaAnillado;

    // Calculo de precio por tramos
    if (numHojas <= 20) precioHoja = 0.15;
    else if (numHojas <= 100) precioHoja = 0.10;
    else precioHoja = 0.08;

    // Incremento por color
    if (tipo == 2) precioHoja += 0.20;

    subtotal = numHojas * precioHoja;

    // Validacion del descuento mayor
    double descEstudiante = 0, descDocente = 0;
    if (perfil == 2) descDocente = subtotal * 0.05;
    if (perfil == 1 && numHojas > 50) descEstudiante = subtotal * 0.08;

    if (descDocente > descEstudiante) descuento = descDocente;
    else descuento = descEstudiante;

    // Recargo nocturno
    if (horario == 2) recargo = subtotal * 0.10;

    // Servicio de anillado
    if (llevaAnillado == 1) {
        anillado = 5.00;
        if (numHojas > 100) anillado *= 0.50; // Descuento especial
    }

    total = subtotal - descuento + recargo + anillado;

    cout << fixed << setprecision(2);
    cout << "--- DETALLE DE FACTURA ---" << endl;
    cout << "Subtotal Impresion: $" << subtotal << endl;
    cout << "Descuento Aplicado: $" << descuento << endl;
    cout << "Recargo Nocturno  : $" << recargo << endl;
    cout << "Costo Anillado    : $" << anillado << endl;
    cout << "TOTAL FINAL       : $" << total << endl;

    return 0;
}
