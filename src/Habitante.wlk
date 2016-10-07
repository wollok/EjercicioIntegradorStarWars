
class Habitante {

	const inteligencia
	const valentia
	
	constructor(_inteligencia, _valentia) {
		inteligencia = _inteligencia
		valentia = _valentia 	
	}
	
	method poder() {
		return valentia + inteligencia
	}

}

class Soldado inherits Habitante {

	var equipo
	
	constructor(_inteligencia,_valentia, _equipo) = super(_inteligencia,_valentia) {
		equipo = _equipo
	}
	
	override method poder() {
		return super() + self.potenciaEquipamiento()	
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
	
	override method poder() {
		return super() + midiclorianos / 1000 + ladoFuerza.potenciaDe(sableDeLuz)
	}

	method vivirSuceso(suceso) {
		ladoFuerza.vivirSuceso(suceso, self)
	}
	
}