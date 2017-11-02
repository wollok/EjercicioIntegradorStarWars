class Habitante {

	const inteligencia
	const valentia
	
	constructor(_inteligencia, _valentia) {
		inteligencia = _inteligencia
		valentia = _valentia 	
	}
	
	method poder() {
		return valentia + inteligencia + self.poderDeClase()
	}
	
	method poderDeClase() = return 0

}

class Soldado inherits Habitante {

	var equipo
	
	constructor(_inteligencia,_valentia, _equipo) = super(_inteligencia,_valentia) {
		equipo = _equipo
	}
	
	override method poderDeClase() {
		return self.potenciaEquipamiento()	
	}

	method potenciaEquipamiento() {
		return equipo.sum { arma => arma.potencia() } 
	} 

}

class Maestro inherits Habitante {

	const midiclorianos
	var ladoFuerza
	var sableDeLuz
	
	constructor(_inteligencia,_valentia, _midiclorianos, _ladoFuerza, _sableDeLuz) = 
		super(_inteligencia,_valentia) {
		midiclorianos = _midiclorianos
		ladoFuerza = _ladoFuerza
		sableDeLuz = _sableDeLuz
	}

	method ladoFuerza(_ladoFuerza) {
		ladoFuerza = _ladoFuerza	
	}
	
	method ladoFuerza() {
		return ladoFuerza
	}
	
	override method poderDeClase() {
		return midiclorianos / 1000 + ladoFuerza.potenciaDe(sableDeLuz)
	}

	method vivirSuceso(suceso) {
		ladoFuerza.vivirSuceso(suceso, self)
	}
	
}
