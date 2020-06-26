class Planeta {

	const habitantes = []
	
	method poder() {
		return habitantes.sum{ habitante => habitante.poder() }	
	}

	method masPoderosos() {
		return habitantes.sortedBy({ unHabitante, otroHabitante => 
			unHabitante.poder() > otroHabitante.poder() }).take(3)
	}
	
	method poseeOrden() {
		return self.poderMasPoderosos() >= self.poder() / 2	
	}

	method poderMasPoderosos() {
		return self.masPoderosos().sum{ habitante => habitante.poder() }	
	}

}