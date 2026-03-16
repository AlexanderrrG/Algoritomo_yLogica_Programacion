Algoritmo BecaUniversitaria
    Definir promedio, asistencia Como Real
    Definir materiasPerdidas Como Entero
    Definir ingresosBajos, participaProyectos Como Logico
    Definir tipoBeca Como Cadena
	
    Escribir "Ingrese promedio (0-10):"
    Leer promedio
    Escribir "Materias perdidas:"
    Leer materiasPerdidas
    Escribir "Porcentaje de asistencia (0-100):"
    Leer asistencia
    Escribir "Ingresos familiares bajos? (Verdadero/Falso):"
    Leer ingresosBajos
    Escribir "Participa en proyectos? (Verdadero/Falso):"
    Leer participaProyectos
	
    Si promedio < 7 O asistencia < 80 Entonces
        tipoBeca = "Sin beneficio"
    Sino
        // Nivel Inicial
        Si promedio >= 9 Y asistencia >= 90 Y materiasPerdidas == 0 Entonces
            tipoBeca = "Beca completa"
        Sino 
            Si promedio >= 8 Y asistencia >= 85 Entonces
                tipoBeca = "Beca parcial"
            Sino
                tipoBeca = "Solo ayuda de materiales"
            FinSi
        FinSi
		
        // Ajuste por Proyectos (subir nivel)
        Si participaProyectos Y ingresosBajos Entonces
            Si tipoBeca == "Solo ayuda de materiales" Entonces
                tipoBeca = "Beca parcial"
            Sino 
                Si tipoBeca == "Beca parcial" Y materiasPerdidas == 0 Entonces
                    tipoBeca = "Beca completa"
                FinSi
            FinSi
        FinSi
    FinSi
	
    Escribir "Tipo de ayuda: ", tipoBeca
    Escribir "Observacion: Analisis socio-academico completado"
FinAlgoritmo
