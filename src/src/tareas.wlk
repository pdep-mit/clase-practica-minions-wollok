
class Tarea {
	method dificultadPara(empleado)
	method validarQuePuedaSerRealizadaPor(empleado)
	method staminaQuePierde(empleado, rol)
}

class ArreglarUnaMaquina inherits Tarea{
	const complejidad
	const herramientasNecesarias
	
	constructor(_complejidad) {
		complejidad = _complejidad
		herramientasNecesarias = []
	}

	constructor(_complejidad, _herramientasNecesarias) {
		complejidad = _complejidad
		herramientasNecesarias = _herramientasNecesarias
	}
	override method dificultadPara(empleado) = complejidad * 2

	override method validarQuePuedaSerRealizadaPor(empleado){
		if(!(empleado.tieneStaminaParaArreglar(complejidad) && empleado.tieneHerramientas(herramientasNecesarias)))
		{
			throw new Exception("Empleado no pudo arreglar la maquina")	
		}
	}
	override method staminaQuePierde(empleado, rol) = complejidad
}


class DefenderSector inherits Tarea{
	//stamina que pierde por realizar tarea: stamina/2 a menos que sea soldado, entonces no pierde nada
	const gradoDeAmenaza
	constructor(_gradoDeAmenaza) { gradoDeAmenaza = _gradoDeAmenaza }

	method staminaQueDemandaDefender(empleado) = empleado.stamina() /2

	override method dificultadPara(empleado) = empleado.dificultadDeDefensa(gradoDeAmenaza)

	override method validarQuePuedaSerRealizadaPor(empleado){
		if (!empleado.puedeDefender(gradoDeAmenaza)){
			throw new Exception("Empleado no pudo defender el sector")
		}
	}

	override method staminaQuePierde(empleado, rol) = return rol.staminaPerdidaPorDefender(empleado, self)
}

class LimpiarSector inherits Tarea{
	const sectorGrande
	const dificultadLimpieza = dificultadDeLimpieza
	
	constructor(_sectorGrande) {
		sectorGrande = _sectorGrande
	}
	
	method staminaNecesaria() = if(sectorGrande) 4 else 1
	
	override method dificultadPara(empleado) = dificultadLimpieza.dificultad()
	
	override method validarQuePuedaSerRealizadaPor(empleado){
		if (!empleado.tieneStaminaParaLimpiar(self.staminaNecesaria())){
			throw new Exception("Empleado no pudo limpiar sector")
		}
	}
	override method staminaQuePierde(empleado, rol) = rol.staminaPerdidaPorLimpiar(empleado, self)

	method staminaQueDemandaLimpiar(empleado) = self.staminaNecesaria()
}

object dificultadDeLimpieza{
	var dificultad = 10
	method dificultad() = return dificultad
	
	method cambiarA(nuevaDificultad) {
		dificultad = nuevaDificultad
	}
}