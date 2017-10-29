import src.roles.*

object rolesHelper {
	method cualquiera() = new Obrero([])
	
	method mucama() = new Mucama()
	
	method soldadoConPractica(unaPractica) = new Soldado(unaPractica) 
}