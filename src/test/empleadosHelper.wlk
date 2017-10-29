import src.empleado.*
import rolesHelper.*

object empleadosHelper {
	method unCiclope() =
		new Ciclope(self.unaStaminaCualquiera(), self.unasTareasCualquiera(), rolesHelper.cualquiera())

	method unBiclope() =
		new Biclope(self.unaStaminaCualquiera(), self.unasTareasCualquiera(), rolesHelper.cualquiera())

	method biclopeConStamina(unaStamina) =
		new Biclope(unaStamina, self.unasTareasCualquiera(), rolesHelper.cualquiera())

	method ciclopeConStamina(unaStamina) =
		new Ciclope(unaStamina, self.unasTareasCualquiera(), rolesHelper.cualquiera())

	method empleadoConTareas(tareas) =
		new Ciclope(self.unaStaminaCualquiera(), tareas, rolesHelper.cualquiera())

	method empleadoConStaminaYHerramientas(unaStamina, unasHerramientas) =
		new Ciclope(unaStamina, unasHerramientas, rolesHelper.cualquiera())
		
	method mucama() =
		new Ciclope(self.unaStaminaCualquiera(), self.unasTareasCualquiera(), rolesHelper.mucama()) 

	method soldadoBiclopeConStaminaYPractica(unaStamina, unaPractica) =
		new Biclope(unaStamina, self.unasTareasCualquiera(), rolesHelper.soldadoConPractica(unaPractica))
		
	method soldadoCiclopeConStaminaYPractica(unaStamina, unaPractica) =
		new Ciclope(unaStamina, self.unasTareasCualquiera(), rolesHelper.soldadoConPractica(unaPractica))

	method unaStaminaCualquiera() = 5
	method unasTareasCualquiera() = []
}