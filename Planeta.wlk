class Planeta {

	const habitantes = []
	
	method poder() = habitantes.sum{ habitante => habitante.poder() }	

	method masPoderosos() =
		habitantes.sortedBy({ unHabitante, otroHabitante => 
			unHabitante.poder() > otroHabitante.poder() }).take(3)
	
	method poseeOrden() =
		self.poderMasPoderosos() >= self.poder() / 2	

	method poderMasPoderosos() =
		self.masPoderosos().sum{ habitante => habitante.poder() }

}