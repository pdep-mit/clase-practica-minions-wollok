class Obrero {
	var cinturon
	constructor(_herramientas) {
		cinturon = _herramientas
	}
	method tieneHerramienta(herramienta) = cinturon.contains(herramienta)
}
