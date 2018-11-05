import calificadores.*
import Elegidos.*


class Cantante{
	var property bailaBien = true
	var property afinado = true
	var property cancion
	var sexo = 'F'
	var apariencia = []
	var edad
	
	method viste(prenda){
		return apariencia.contains(prenda)
	}
	
	method vestirseCon(prenda){
		apariencia.add(prenda)
	}
	
	method esMujer(){
		return sexo == 'F'
	}
	
	method esJoven(){
		return edad <= 30
	}
	
	method esMayor(){
		return edad > 50
	}
	
	method genero(){
		return cancion.genero()
	}
	
	method encajaApariencia(){
		return self.genero().encajaApariencia(self)
	}
	
}

class Cancion{
	var property autor
	var property genero
	
}

object folklore{
	method encajaApariencia(participante){
		return participante.viste("poncho") and 
		(participante.viste("botas") or participante.viste("alpargatas"))
	}
}

object tango{
	method encajaApariencia(participante){
		return participante.esMayor() and participante.afinado() and participante.viste("sombrero")
	}
}

object cumbia{
	method encajaApariencia(participante){
		return participante.bailaBien()
	}
}

object pop{
	method encajaApariencia(participante){
		return true
	}
}
