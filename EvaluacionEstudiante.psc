Algoritmo EvaluacionEstudiante
    Definir n1, n2, n3, asist, promedio Como Real
    Definir proy, plagio Como Entero
    Definir estado, obsDiscip, obsRend Como Cadena
    
    Escribir "Ingrese Nota 1, Nota 2 y Nota 3:"
    Leer n1, n2, n3
    Escribir "Ingrese porcentaje de asistencia (0-100):"
    Leer asist
    Escribir "Entrego proyecto final? (1:Si, 0:No):"
    Leer proy
    Escribir "Cometio plagio? (1:Si, 0:No):"
    Leer plagio
    
    // Inicializar observaciones
    obsDiscip <- "Sin novedades"
    obsRend <- "Normal"
    
    // Prioridad 1: Plagio (Regla 198)
    Si plagio == 1 Entonces
        estado <- "REPROBADO"
        obsDiscip <- "SANCION POR PLAGIO DETECTADO"
    Sino
        // Prioridad 2: Asistencia (Regla 200)
        Si asist < 70 Entonces
            estado <- "REPROBADO"
            obsRend <- "Inasistencia insuficiente"
        Sino
            promedio <- (n1 + n2 + n3) / 3
            
            // Logica de Aprobacion y Recuperacion (Reglas 199, 201-203)
            Si promedio >= 7 Y proy == 1 Entonces
                estado <- "APROBADO"
                // Felicitacion (Regla 205)
                Si n1 >= 9 Y n2 >= 9 Y n3 >= 9 Y asist >= 95 Entonces
                    obsRend <- "APROBADO CON FELICITACION"
                FinSi
            Sino
                Si promedio >= 5 Entonces
                    estado <- "RECUPERACION"
                    Si proy == 0 Entonces
                        obsRend <- "Falta entrega de proyecto"
                    FinSi
                Sino
                    estado <- "REPROBADO"
                FinSi
            FinSi
            
            // Verificacion de Rendimiento Irregular (Regla 204)
            Si (n1 == 10 O n2 == 10 O n3 == 10) Entonces
                Si (n1 < 4 Y n2 < 4) O (n1 < 4 Y n3 < 4) O (n2 < 4 Y n3 < 4) Entonces
                    obsRend <- "RENDIMIENTO IRREGULAR"
                FinSi
            FinSi
        FinSi
    FinSi
    
    Escribir "--- RESULTADOS ACADEMICOS ---"
    Si plagio == 0 Y asist >= 70 Entonces
        Escribir "Promedio Final: ", promedio
    FinSi
    Escribir "Estado: ", estado
    Escribir "Observacion Disciplinaria: ", obsDiscip
    Escribir "Observacion de Rendimiento: ", obsRend
FinAlgoritmo