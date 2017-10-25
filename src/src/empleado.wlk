class Empleado {
	var stamina
	constructor(_stamina) { stamina = _stamina }
	
	method stamina() = stamina

	method comer(fruta) {
		self.aumentarStamina(fruta.valor())
	}
	
	method aumentarStamina(cantidadDeStamina)
}

class Ciclope inherits Empleado {
	override method aumentarStamina(cantidadDeStamina) {
		stamina += cantidadDeStamina
	}
}

class Biclope inherits Empleado {
	override method aumentarStamina(cantidadDeStamina) {
		stamina = (stamina + cantidadDeStamina).min(10)
	}
}