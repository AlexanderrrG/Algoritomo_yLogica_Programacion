Algoritmo ControlAcceso

    Definir traeCredencial, perteneceCurso Como Logico
    Definir minutosTarde, faltas Como Entero
    
    Escribir "Posee credencial? (Verdadero/Falso):"
    Leer traeCredencial
    Escribir "Pertenece al curso actual? (Verdadero/Falso):"
    Leer perteneceCurso
    Escribir "Minutos tarde:"
    Leer minutosTarde
    Escribir "Faltas acumuladas:"
    Leer faltas
    
    Si NO traeCredencial O NO perteneceCurso Entonces
        Escribir "Estado: No puede ingresar"
        Escribir "Motivo: Falta de credencial o no pertenece al curso"
        Escribir "Prioridad: Alta"
    Sino
        Si faltas >= 5 O minutosTarde > 10 Entonces
            Escribir "Estado: No puede ingresar"
            Escribir "Motivo: Exceso de faltas o tiempo de demora superado"
            Escribir "Prioridad: Alta"
        Sino
            Si (minutosTarde > 0 Y minutosTarde <= 10) O (faltas >= 3) Entonces
                Escribir "Estado: Ingresa con advertencia"
                Escribir "Motivo: Retraso leve o historial de faltas"
                Escribir "Prioridad: Media"
            Sino
                Escribir "Estado: Ingresa sin problema"
                Escribir "Motivo: Cumple todos los requisitos"
                Escribir "Prioridad: Baja"
            FinSi
        FinSi
    FinSi
FinAlgoritmo

