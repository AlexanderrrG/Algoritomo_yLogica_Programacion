Algoritmo CajeroAutomatico
    // Definir stocks iniciales
    Definir s20, s10, s5, s1 Como Entero
    s20 <- 10; s10 <- 10; s5 <- 10; s1 <- 10 
    Definir saldoU, montoS, montoAux Como Real
    saldoU <- 500
    Definir e20, e10, e5, e1 Como Entero 
	
    Escribir "Monto a retirar:"
    Leer montoS
	
    Si montoS <= 0 O montoS > saldoU Entonces
        Escribir "Error: Monto invalido o saldo insuficiente"
    Sino
        montoAux <- montoS
        
        // Calcular billetes de 20
        e20 <- TRUNC(montoAux / 20)
        Si e20 > s20 Entonces
            e20 <- s20
        FinSi
        montoAux <- montoAux - (e20 * 20)
		
        // Calcular billetes de 10
        e10 <- TRUNC(montoAux / 10)
        Si e10 > s10 Entonces
            e10 <- s10
        FinSi
        montoAux <- montoAux - (e10 * 10)
		
        // Calcular billetes de 5
        e5 <- TRUNC(montoAux / 5)
        Si e5 > s5 Entonces
            e5 <- s5
        FinSi
        montoAux <- montoAux - (e5 * 5)
		
        // Calcular billetes de 1
        e1 <- TRUNC(montoAux / 1)
        Si e1 > s1 Entonces
            e1 <- s1
        FinSi
        montoAux <- montoAux - (e1 * 1)
		
        Si montoAux == 0 Entonces
            Escribir "Retiro exitoso. Entregando:"
            Escribir e20, " billetes de $20"
            Escribir e10, " billetes de $10"
            Escribir e5, " billetes de $5"
            Escribir e1, " billetes de $1"
            Escribir "Nuevo saldo: $", saldoU - montoS
        Sino
            Escribir "Error: El cajero no cuenta con los billetes necesarios"
        FinSi
    FinSi
FinAlgoritmo
