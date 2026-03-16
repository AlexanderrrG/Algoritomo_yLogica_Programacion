#include <iostream>
#include <string>

using namespace std;

int main() {
    float n1, n2, n3, asistencia, promedio;
    int proyecto, plagio;
    string estado, obsD = "Sin sanciones", obsR = "Normal";

    cout << "--- EVALUADOR ACADEMICO ---" << endl;
    cout << "Nota 1: "; cin >> n1;
    cout << "Nota 2: "; cin >> n2;
    cout << "Nota 3: "; cin >> n3;
    cout << "Asistencia (%): "; cin >> asistencia;
    cout << "Entrego Proyecto (1:Si, 0:No): "; cin >> proyecto;
    cout << "Cometio Plagio (1:Si, 0:No): "; cin >> plagio;

    if (plagio == 1) {
        estado = "REPROBADO (AUTOMATICO)";
        obsD = "PLAGIO DETECTADO";
    } else if (asistencia < 70) {
        estado = "REPROBADO";
        obsR = "Baja asistencia";
    } else {
        promedio = (n1 + n2 + n3) / 3.0;

        // Logica de aprobacion
        if (promedio >= 7 && proyecto == 1) {
            estado = "APROBADO";
            if (n1 >= 9 && n2 >= 9 && n3 >= 9 && asistencia >= 95) {
                obsR = "EXCELENCIA ACADEMICA (FELICITACION)";
            }
        } else if (promedio >= 5) {
            estado = "RECUPERACION";
            if (proyecto == 0) obsR = "Falta entrega de proyecto";
        } else {
            estado = "REPROBADO";
        }

        // Verificacion de rendimiento irregular
        int notasBajas = 0;
        if (n1 < 4) notasBajas++;
        if (n2 < 4) notasBajas++;
        if (n3 < 4) notasBajas++;

        if ((n1 == 10 || n2 == 10 || n3 == 10) && notasBajas >= 2) {
            obsR = "RENDIMIENTO IRREGULAR (Picos de nota)";
        }
    }

    cout << "\n--- RESULTADOS ---" << endl;
    if (plagio != 1 && asistencia >= 70) cout << "Promedio: " << promedio << endl;
    cout << "Estado Academico: " << estado << endl;
    cout << "Observacion Disciplinaria: " << obsD << endl;
    cout << "Observacion de Rendimiento: " << obsR << endl;

    return 0;
}
