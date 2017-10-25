class Empleado {
	var stamina
	constructor(_stamina) { stamina = _stamina }
	
	method stamina() = stamina

	method comer(fruta) {
		stamina += fruta.valor()
	}
}

