
class Habitante {

	const inteligencia
	const valentia
	
	method poder() {
		return valentia + inteligencia
	}

}

class Soldado inherits Habitante {

	var equipo
	
	override method poder() {
		return super() + self.potenciaEquipamiento()	
	}

	method potenciaEquipamiento() {
		return equipo.sum { arma => arma.potencia() } 
	} 

}

class Maestro inherits Habitante {

	const midiclorianos
	var property ladoFuerza
	var sableDeLuz
	
	override method poder() {
		return super() + midiclorianos / 1000 + ladoFuerza.potenciaDe(sableDeLuz)
	}

	method vivirSuceso(suceso) {
		ladoFuerza.vivirSuceso(suceso, self)
	}
	
}