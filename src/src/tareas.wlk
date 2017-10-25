class ArreglarUnaMaquina {
	const complejidadDeLaMaquina
	const herramientasNecesarias
	constructor (_complejidadDeLaMaquina) {
		complejidadDeLaMaquina = _complejidadDeLaMaquina
	}
	constructor(_complejidadDeLaMaquina, _herramientasNecesarias) {
		complejidadDeLaMaquina = _complejidadDeLaMaquina
		herramientasNecesarias = _herramientasNecesarias
	}
	
	method dificultadPara(unEmpleado) = complejidadDeLaMaquina * 2
	
	method validarQuePuedeSerRealizadaPor(unEmpleado) {
		if(!self.puedeSerRealizadaPor(unEmpleado)) throw new Exception("Empleado no pudo arreglar la maquina")
	}
	
	method puedeSerRealizadaPor(unEmpleado) =
		unEmpleado.tieneStamina(complejidadDeLaMaquina) &&
		herramientasNecesarias.all({ herramienta => unEmpleado.tieneHerramienta(herramienta) })
}

class LimpiarUnSector {
	method dificultadPara(unEmpleado) = dificultadDeLimpiarUnSector.dificultad()
}

object dificultadDeLimpiarUnSector {
	var dificultad = 10
	method cambiarA(unaDificultad) {
		dificultad = unaDificultad
	}
	method dificultad() = dificultad
}

class DefenderUnSector {
	const gradoDeAmenaza
	constructor(_gradoDeAmenaza) { gradoDeAmenaza = _gradoDeAmenaza }
	
	method dificultadPara(unEmpleado) = unEmpleado.dificultadParaDefender(gradoDeAmenaza)
}
