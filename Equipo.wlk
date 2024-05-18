class Equipo {
	var property potencia
	var property buenEstado = true
	
	method esUtil() = (potencia > 10) && buenEstado
	
	method reparar() {
		buenEstado = true
	}
	
	method usar() {
		buenEstado = false
	}
}