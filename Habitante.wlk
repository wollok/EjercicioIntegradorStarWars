import Equipo.*

class Habitante {
	const inteligencia
	const valentia
	
	method poder() = valentia + inteligencia
}

class Soldado inherits Habitante {
	const equipamiento = []
	
	override method poder() = super() + self.potenciaEquipamiento()
	
	method potenciaEquipamiento() = equipamiento
		.filter({ eq => eq.esUtil() })
		.sum({ eq => eq.potencia() })
	
	method tomar(algo) {
		equipamiento.add(algo)
	}
}

class Maestro inherits Habitante {
	const midiclorianos
	var property ladoFuerza
	const sableDeLuz
	
	override method poder() = (super() + (midiclorianos / 1000)) + ladoFuerza.potenciaDe(sableDeLuz)
	
	method vivirSuceso(suceso) {
		ladoFuerza.vivirSuceso(suceso, self)
	}
}