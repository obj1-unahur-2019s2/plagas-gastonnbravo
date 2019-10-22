import plagas.*
class Hogar {
	var property nivelDeMugre
	var property confort
	
	method esBueno(){ return nivelDeMugre <= confort/2}
	
	method recibirAtaque(bicho){nivelDeMugre =+ bicho.danio()}
	
}
class Huerta{
	var property capacidadProduccion
	method esBueno(){
		return capacidadProduccion < nivelHuerta.nivel()
	}
	method recibirAtaque(bicho){
		capacidadProduccion =- bicho.danio()/10
		if(bicho.transmiteEnfermedades()){
			capacidadProduccion -= 10
		}else{
			
		}
	}
}
object nivelHuerta{
	var property nivel = 0
}
class Mascota{
	var property salud
	method esBueno() {return  salud>250}
	method recibirAtaque(bicho){
		if(bicho.transmiteEnfermedades()){
			salud =- bicho.danio()
		}else{
			
		}
		
	}
	
}



/*
 * HERENCIA = heredar los atributos y metodos de una clase a otra clase
 * ejemplo = class Pulga inherits Plaga{}
 * override method "mordisco"
 * se utiliza para modificar un methodo que fue heredado
 * super() se utiliza para retornar valores de herencia,tambien
 * para alplicar el mothodo original dentro de un methodo override 
 * 
 * 
 * 
 * hackertype
 * 
 */