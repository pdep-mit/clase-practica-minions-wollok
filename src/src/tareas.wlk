class ArreglarUnaMaquina {
	const complejidadDeLaMaquina
	constructor (_complejidadDeLaMaquina) {
		complejidadDeLaMaquina = _complejidadDeLaMaquina
	}
	
	method dificultad() = complejidadDeLaMaquina * 2
}

class LimpiarUnSector {
	method dificultad() = dificultadDeLimpiarUnSector.dificultad()
}

object dificultadDeLimpiarUnSector {
	var dificultad = 10
	method cambiarA(unaDificultad) {
		dificultad = unaDificultad
	}
	method dificultad() = dificultad
}