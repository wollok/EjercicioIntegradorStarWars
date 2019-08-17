class Planeta {

	var habitantes
	
	method poder() {
		return self.poderDe(habitantes) 	
	}

	method masPoderosos() {
		return habitantes.sortedBy({ unHabitante, otroHabitante => 
			unHabitante.poder() > otroHabitante.poder() }).take(3)
	}
	
	method poseeOrden() {
		return self.poderMasPoderosos() >= self.poder() / 2	
	}

	method poderMasPoderosos() {
		return self.poderDe(self.masPoderosos())	
	}

	method poderDe(grupoDeHabitantes) {
		return grupoDeHabitantes.sum{ habitante => habitante.poder() }	
	}

}