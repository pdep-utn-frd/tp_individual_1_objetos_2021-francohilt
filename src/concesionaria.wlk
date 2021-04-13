/* Posible solución */
object deltaMotores {
	var capital = 100
	
	method capital() {
		return capital
	}
	method esAfortunada() { 
		return capital > 120
	}
	
	method comprar(unVehiculo) {
		capital -= unVehiculo.precioCompra()
	}
	
	method vender(unVehiculo) {
		capital += unVehiculo.precioVenta()
	}
}

object onix {
	const costo = 50
	
	method fabricante() { 
		return "Chevrolet"
	}
	
	method precioCompra() {
		return costo
	}
	
	method precioVenta() {
		return costo + 0.2 * costo
	}
}

object rastrojero {
	var altoDeLaCaja = 0.5
	var tiempoSinVenderse = 0
	const costoSinMotor = 20
	var tipoDeMotor = motorDiesel
	
	method fabricante() { 
		return "Talleres"
	}
	
	method aumentarCaja(cant) {
		altoDeLaCaja += cant
	}
	
	method valorDeLaCaja() {
		return altoDeLaCaja * 10
	}
	
	method precioCompra() { // BONUS (1)
		return costoSinMotor + self.valorDeLaCaja() + tipoDeMotor.valor()
	}

	method precioVenta() {
		return 50 + tiempoSinVenderse
	}
	
	method aumentarTiempoSinVenderse(cant) {
		tiempoSinVenderse += cant
	}
	
	method cambiarMotor(unMotor) {
		tipoDeMotor = unMotor
	}
}

// BONUS (1)

object motorNaftero {
	var cv = 30
	
	method valor() {
		return cv/2
	}
	
	method aumentarCV(cant) {
		cv += cant
	}
}

object motorDiesel {
	
	method valor() {
		return 10
	}
}

// BONUS (2)

object cartelera {
	method publicitar(unVehiculo) { 
		return "Promoción: " + unVehiculo.fabricante()
	}
}

object cartelera2 { // Otra forma de pensarlo

	var vehiculo // Por defecto: var vehiculo = null
	
	method publicitar() { // No puedo publicitar un vehiculo sin haber inicializado la variable vehiculo.
		return "Promoción: " + vehiculo.fabricante()
	}
	
	method cambiar(nuevoVehiculo) { 
		vehiculo = nuevoVehiculo
	}
}

