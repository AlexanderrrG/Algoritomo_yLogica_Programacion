Algoritmo PlanificadorViaje
    Definir numEst, destino, dias, mismaFac, reqCoord Como Entero
    Definir precioDia, subtotal, descGrupo, descFac, costoCoord, total Como Real
    
    Escribir "Destino (1:Costa, 2:Sierra, 3:Oriente):"
    Leer destino
    Escribir "Cantidad de estudiantes:"
    Leer numEst
    Escribir "Dias de viaje:"
    Leer dias
    Escribir "Son de la misma facultad? (1:Si, 0:No):"
    Leer mismaFac
    Escribir "Requiere coordinador? (1:Si, 0:No):"
    Leer reqCoord
	
    // Precio por destino
    Si destino == 1 Entonces 
		precioDia = 45.0 
	Sino
		Si destino == 2 Entonces 
			precioDia = 55.0 
		Sino
					precioDia = 65.0
				FinSi
			FinSi
			
			subtotal = numEst * dias * precioDia
			
			// Descuento por grupo
			Si numEst > 25 Entonces
				descGrupo = subtotal * 0.10
			Sino
				Si numEst >= 15 Entonces
					descGrupo = subtotal * 0.05
				Sino
					descGrupo = 0
				FinSi
			FinSi
			
			// Logica del coordinador
			costoCoord = 0
			Si reqCoord == 1 Entonces
				Si numEst <= 20 Entonces
					costoCoord = dias * precioDia
				FinSi
			FinSi
			
			total = subtotal - descGrupo + costoCoord
			
			// Descuento extra facultad
			Si mismaFac == 1 Entonces
				descFac = total * 0.07
				total = total - descFac
			FinSi
			
			Escribir "Costo Base: $", subtotal
			Escribir "Descuento Grupo: $", descGrupo
			Escribir "Costo Coordinador: $", costoCoord
			Escribir "Total Viaje: $", total
			Escribir "Costo por Estudiante: $", total / numEst
FinAlgoritmo
