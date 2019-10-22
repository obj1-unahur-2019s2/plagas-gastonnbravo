class Plaga{
	var poblacion = 0
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
}

class PlagaMosquito inherits Plaga{
	override method transmiteEnfermedades(){
		return super() and poblacion % 3 == 0
	}
	
}