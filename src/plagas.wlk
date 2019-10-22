import casas.*
class Plaga{
	var property poblacion
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
	method atacar(elemento){
		self.efectoAtaque()
		elemento.recibirAtaque(self)//va un self
	}
	method efectoAtaque(){
		poblacion += (poblacion / 10)
	}
	
	
	//method nivelDanio(){}
	//method transmiteEnfermedades(){return}
}

class Cucarachas inherits Plaga{
	var property peso
	override method transmiteEnfermedades(){
		return super() and peso >= 10
	}
	method danio(){return poblacion/2}
	override method efectoAtaque(){
		super() 
		peso += 2 
	}
	
}

class PlagaMosquito inherits Plaga{
	override method transmiteEnfermedades(){
		return super() and poblacion % 3 == 0
	}
	method danio(){return poblacion}
	


}
class Pulgas inherits Plaga{
	method danio(){return poblacion * 2}
 	method ataque(){}
}

class Garrapatas inherits Pulgas{
	override method efectoAtaque(){
		super()
		poblacion += poblacion/5
	}
	 
	
}

