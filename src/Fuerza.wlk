
class Fuerza {

	var antiguedad = 0
	
	method pasarTiempo() {
		antiguedad = antiguedad + 1
	}
	
	method vivirSuceso(suceso, maestro) {
		self.pasarTiempo()
		self.aceptarSuceso(suceso, maestro)	
	}
	
	method aceptarSuceso(suceso, maestro)
	
}

class LadoOscuro inherits Fuerza {
	
	var odio = 1000
	
	method descripcion() = "Lado Oscuro"
	
	method aumentarOdio() {
		odio = odio * 1.1	
	}
	
	override method aceptarSuceso(suceso, maestro) {
		if(suceso.cargaEmocional() > odio) 
			maestro.ladoFuerza(new LadoLuminoso())	
		else 
			self.aumentarOdio()	
	} 
	
	method potenciaDe(sable) {
		return sable.potencia() * 2 + antiguedad	
	}
	
}

class LadoLuminoso inherits Fuerza {
	
	var pazInterior = 1000

	method descripcion() = "Lado Luminoso"
	
	method alterarPazInterior(valor) {
		pazInterior = pazInterior + valor	
	}
	
	method sinPaz() {
		return pazInterior <= 0	
	}

	override method aceptarSuceso(suceso, maestro) {
		self.alterarPazInterior(suceso.cargaEmocional())
		if(self.sinPaz()) 
			maestro.ladoFuerza(new LadoOscuro()) 	
	}

	method potenciaDe(sable) {
		return sable.potencia() * antiguedad	
	}

}

class Suceso {

	const property cargaEmocional
	
}