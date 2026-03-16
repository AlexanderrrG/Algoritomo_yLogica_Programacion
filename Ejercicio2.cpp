#include <iostream>
#include <string>

using namespace std;

int main() {
    float promedio, asistencia;
    int materiasPerdidas;
    bool ingresosBajos, participaProyectos;
    string tipoBeca = "Sin beneficio";

    cout << "--- Sistema de Becas ---" << endl;
    cout << "Promedio: "; cin >> promedio;
    cout << "Materias perdidas: "; cin >> materiasPerdidas;
    cout << "Asistencia (%): "; cin >> asistencia;
    cout << "Ingresos bajos? (1:Si, 0:No): "; cin >> ingresosBajos;
    cout << "Participa en proyectos? (1:Si, 0:No): "; cin >> participaProyectos;

    if (promedio < 7 || asistencia < 80) {
        tipoBeca = "Sin beneficio";
    } else {
        // Determinacion nivel base
        if (promedio >= 9 && asistencia >= 90 && materiasPerdidas == 0) {
            tipoBeca = "Beca completa";
        } else if (promedio >= 8 && asistencia >= 85) {
            tipoBeca = "Beca parcial";
        } else {
            tipoBeca = "Solo ayuda de materiales";
        }

        // Aplicar bono por proyectos
        if (participaProyectos && ingresosBajos) {
            if (tipoBeca == "Solo ayuda de materiales") {
                tipoBeca = "Beca parcial";
            } else if (tipoBeca == "Beca parcial" && materiasPerdidas == 0) {
                tipoBeca = "Beca completa";
            }
        }
    }

    cout << "\nRESULTADO:" << endl;
    cout << "Tipo de ayuda: " << tipoBeca << endl;
    cout << "Razon academica: " << (promedio >= 7 ? "Cumple promedio minimo" : "Promedio insuficiente") << endl;

    return 0;
}
