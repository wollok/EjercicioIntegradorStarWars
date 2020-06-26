import Equipo.*

class Habitante {

	const inteligencia
	const valentia
	
	method poder() {
		return valentia + inteligencia
	}

}

class Soldado inherits Habitante {

	const equipamiento = []
	
	override method poder() {
		return super() + self.potenciaEquipamiento()	
	}

	method potenciaEquipamiento() {
		return equipamiento.
			filter({ eq=> eq.esUtil()}).
			sum({ eq => eq.potencia()}) 
	} 
	
	method tomar(algo){
		equipamiento.add(algo)
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