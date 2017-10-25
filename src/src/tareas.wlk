class ArreglarUnaMaquina {
	const complejidadDeLaMaquina
	constructor (_complejidadDeLaMaquina) {
		complejidadDeLaMaquina = _complejidadDeLaMaquina
	}
	
	method dificultadPara(unEmpleado) = complejidadDeLaMaquina * 2
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