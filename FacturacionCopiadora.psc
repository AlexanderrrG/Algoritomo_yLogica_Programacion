Algoritmo FacturacionCopiadora
	Definir numHojas, perfil, horario, tipo, llevaAnillado Como Entero
	Definir precioBase, subtotal, descuento, recargo, costoAnillado, total Como Real
	Escribir 'Cantidad de hojas:'
	Leer numHojas
	Escribir 'Tipo (1: B/N, 2: Color):'
	Leer tipo
	Escribir 'Perfil (1: Estudiante, 2: Docente):'
	Leer perfil
	Escribir 'Horario (1: Normal, 2: Nocturno):'
	Leer horario
	Escribir 'Lleva anillado? (1: Si, 0: No):'
	Leer llevaAnillado
	// 1. Determinar precio por tramo
	Si numHojas<=20 Entonces
		precioBase <- 0.10
	SiNo // Precio A
		Si numHojas<=100 Entonces
			precioBase <- 0.08
		SiNo // Precio B
			precioBase <- 0.05
		FinSi // Precio C
	FinSi
	// 2. Extra por color
	Si tipo==2 Entonces
		precioBase <- precioBase+0.15
	FinSi
	subtotal <- numHojas*precioBase
	// 3. Logica de Descuentos (Solo el mayor)
	descuento <- 0
	Si perfil==2 Entonces
		descuento <- subtotal*0.05
	SiNo // Docente
		Si perfil==1 Y numHojas>50 Entonces
			descuento <- subtotal*0.08
		FinSi // Estudiante
	FinSi
	// 4. Recargo Nocturno
	recargo <- 0
	Si horario==2 Entonces
		recargo <- subtotal*0.15
	FinSi
	// 5. Anillado
	costoAnillado <- 0
	Si llevaAnillado==1 Entonces
		costoAnillado <- 2.50
		Si numHojas>100 Entonces
			costoAnillado <- costoAnillado*0.80
		FinSi // Descuento en anillado
	FinSi
	total <- subtotal-descuento+recargo+costoAnillado
	Escribir 'Subtotal: $', subtotal
	Escribir 'Descuento: $', descuento
	Escribir 'Recargo: $', recargo
	Escribir 'Anillado: $', costoAnillado
	Escribir 'Total a pagar: $', total
FinAlgoritmo
