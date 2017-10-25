class Empleado {
	var stamina
	var tareasRealizadas
	var rol
	constructor(_stamina, _rol) {
		stamina = _stamina
		rol = _rol
		tareasRealizadas = []
	}

	constructor(_stamina, _rol, _tareasRealizadas) {
		stamina = _stamina
		rol = _rol
		tareasRealizadas = _tareasRealizadas
	}
	
	method stamina() = stamina

	method comer(fruta) {
		self.aumentarStamina(fruta.valor())
	}
	
	method aumentarStamina(cantidadDeStamina)
	
	method experiencia() = tareasRealizadas.size() + tareasRealizadas.sum({ tarea => tarea.dificultadPara(self) })
	
	method realizarTarea(unaTarea) {
		unaTarea.validarQuePuedeSerRealizadaPor(self)
	}

	method tieneStamina(staminaNecesaria) = stamina >= staminaNecesaria
	
	method tieneHerramienta(herramienta) = rol.tieneHerramienta(herramienta)
}

class Ciclope inherits Empleado {
	override method aumentarStamina(cantidadDeStamina) {
		stamina += cantidadDeStamina
	}
	
	method dificultadParaDefender(gradoDeAmenaza) = gradoDeAmenaza
}

class Biclope inherits Empleado {
	override method aumentarStamina(cantidadDeStamina) {
		stamina = (stamina + cantidadDeStamina).min(10)
	}
	
	method dificultadParaDefender(gradoDeAmenaza) = 2 * gradoDeAmenaza
}