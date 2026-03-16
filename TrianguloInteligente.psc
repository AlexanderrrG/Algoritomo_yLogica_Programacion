Algoritmo TrianguloInteligente
		Definir l1, l2, l3, h, angulo, area Como Real
		
		Escribir "Ingrese Lado 1 (Base), Lado 2 y Lado 3:"
		Leer l1, l2, l3
		Escribir "Ingrese Altura y Angulo Principal:"
		Leer h, angulo
		
		Si (l1+l2 > l3) Y (l1+l3 > l2) Y (l2+l3 > l1) Entonces
			Escribir "El triangulo es valido."
			
			// Clasificacion por Lados
			Si l1 == l2 Y l2 == l3 Entonces
				Escribir "Tipo: Equilatero"
			Sino
				Si l1 == l2 O l1 == l3 O l2 == l3 Entonces
					Escribir "Tipo: Isosceles"
				Sino
					Escribir "Tipo: Escaleno"
				FinSi
			FinSi
			
			// Clasificacion por Angulos
			Si angulo == 90 Entonces
				Escribir "Angulo: Rectangulo"
			Sino
				Si angulo < 90 Entonces
					Escribir "Angulo: Acutangulo"
				Sino
					Escribir "Angulo: Obtusangulo"
				FinSi
			FinSi
			
			area = (l1 * h) / 2
			Escribir "Area: ", area
			
			// Consistencia (Simplificada)
			Si h > l2 O h > l3 Entonces
				Escribir "Advertencia: La altura es inconsistente con los lados."
			Sino
				Escribir "Consistencia: Los datos son coherentes."
			FinSi
		Sino
			Escribir "Los lados no forman un triangulo valido."
		FinSi
FinAlgoritmo
