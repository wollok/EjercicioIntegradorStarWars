
class Equipo {
	
	var property potencia
	var property buenEstado = true
	
	method esUtil() {
		 return potencia > 10 && buenEstado
	}
	
	method reparar(){
		buenEstado = true
	}
	method usar(){
		buenEstado = false
	}

}