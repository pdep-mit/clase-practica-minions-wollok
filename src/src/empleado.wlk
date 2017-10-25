class Empleado {
	var stamina
	var tareasRealizadas
	constructor(_stamina) {
		stamina = _stamina
		tareasRealizadas = []
	}

	constructor(_stamina, _tareasRealizadas) {
		stamina = _stamina
		tareasRealizadas = _tareasRealizadas
	}
	
	method stamina() = stamina

	method comer(fruta) {
		self.aumentarStamina(fruta.valor())
	}
	
	method aumentarStamina(cantidadDeStamina)
	
	method experiencia() = tareasRealizadas.size() + tareasRealizadas.sum({ tarea => tarea.dificultad() })
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