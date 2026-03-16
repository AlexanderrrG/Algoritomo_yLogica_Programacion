Algoritmo ConsumoElectrico
    Definir lAnt, lAct, consumo, total, costoBase Como Real
    Definir tipoV, numH, altoC, deuda Como Entero
    
    Escribir "Ingrese lectura anterior:"
    Leer lAnt
    Escribir "Ingrese lectura actual:"
    Leer lAct
    
    Si lAct < lAnt Entonces
	Escribir "Error: La lectura actual no puede ser menor a la anterior."
    Sino
	consumo <- lAct - lAnt
        
        // Calculo por tramos [cite: 177]
        Si consumo <= 150 Entonces
            costoBase <- consumo * 0.10
        Sino
            costoBase <- consumo * 0.15
        FinSi
        
        Escribir "Tipo Vivienda (1:Social, 2:Normal):"
        Leer tipoV
        Escribir "Numero de habitantes:"
        Leer numH
        Escribir "Tiene equipos de alto consumo? (1:Si, 0:No):"
        Leer altoC
        Escribir "Tiene deuda anterior? (1:Si, 0:No):"
        Leer deuda
        
        total <- costoBase
        
        // Aplicar Recargo por deuda 
        Si deuda == 1 Entonces
            total <- total + (costoBase * 0.10)
        FinSi
        
        // Aplicar Subsidio Social 
        Si tipoV == 1 Y consumo < 100 Entonces
            total <- total - (costoBase * 0.20)
        FinSi
        
	Escribir "--- REPORTE DE FACTURACION ---" 
	Escribir "Consumo Total: ", consumo, " kWh" 
	Escribir "Costo Base: $", costoBase 
	Escribir "Total a Pagar: $", total 
        
        // Alertas de seguridad y consumo
        Si (consumo / numH) > 100 Entonces
		Escribir "ALERTA: Consumo excesivo por habitante." 
        FinSi
        
        Si altoC == 1 Y consumo > 300 Entonces
		Escribir "RIESGO: Posible sobrefacturacion por equipos potentes."
        FinSi
    FinSi
FinAlgoritmo