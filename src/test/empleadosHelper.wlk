import src.empleado.*
import rolesHelper.*

object empleadosHelper {
	method biclopeConStamina(unaStamina) = new Biclope(unaStamina, rolesHelper.cualquiera())
	method ciclopeConStamina(unaStamina) = new Ciclope(unaStamina, rolesHelper.cualquiera())
	method empleadoConTareas(tareas) = new Ciclope(0, rolesHelper.cualquiera(), tareas)
	method empleadoConStaminaYHerramientas(unaStamina, unasHerramientas) =
		new Ciclope(unaStamina, rolesHelper.cualquiera(), unasHerramientas)
}