class Hogar {
	var property nivelDeMugre
	var property confort
	
	method esBueno(){ return nivelDeMugre <= confort/2}
	
}
class Huerta{
	var property capacidadProduccion
	method esBueno(nivel){return capacidadProduccion > nivel }
	
}
class Mascota{
	var salud
	method esBueno() {return  salud>250}
	
}



/*
 * HERENCIA = 
 * 
 * 
 * 
 * 
 * 
 */