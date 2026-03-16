#include <iostream>

using namespace std;

int main() {
    float l1, l2, l3, h, angulo, area;

    cout << "Lado 1 (Base): "; cin >> l1;
    cout << "Lado 2: "; cin >> l2;
    cout << "Lado 3: "; cin >> l3;
    cout << "Altura: "; cin >> h;
    cout << "Angulo: "; cin >> angulo;

    // Validacion de existencia (Desigualdad triangular)
    if ((l1 + l2 > l3) && (l1 + l3 > l2) && (l2 + l3 > l1)) {
        cout << "\n--- ANALISIS DEL TRIANGULO ---" << endl;
        cout << "Validez: Existente" << endl;

        // Clasificacion por lados
        if (l1 == l2 && l2 == l3) {
            cout << "Tipo por lados: Equilatero" << endl;
        } else if (l1 == l2 || l1 == l3 || l2 == l3) {
            cout << "Tipo por lados: Isosceles" << endl;
        } else {
            cout << "Tipo por lados: Escaleno" << endl;
        }

        // Clasificacion por angulo
        if (angulo == 90) cout << "Tipo por angulo: Rectangulo" << endl;
        else if (angulo < 90) cout << "Tipo por angulo: Acutangulo" << endl;
        else cout << "Tipo por angulo: Obtusangulo" << endl;

        area = (l1 * h) / 2;
        cout << "Area calculada: " << area << endl;

        // Verificacion de consistencia
        if (h > l2 || h > l3) {
            cout << "MENSAJE: Inconsistencia detectada (Altura mayor a los lados)." << endl;
        } else {
            cout << "MENSAJE: Datos geometricamente consistentes." << endl;
        }

    } else {
        cout << "Error: Los lados no cumplen la propiedad de existencia." << endl;
    }

    return 0;
}
