import Cantantes.*
import Elegidos.*

class Votante{

	method votoPositivo()
	
	method leAgrada(unParticipante)
	
	method votoNegativo(){
		return -self.votoPositivo()/2
	}
	
	method puntosPara(participante){
		if(self.leAgrada(participante)){return self.votoPositivo()}
		else{return self.votoNegativo()}
	}
	
}

class Juez inherits Votante{
	override method votoPositivo(){
		return 10
	}
}

class Machirulo inherits Juez{
	override method leAgrada(unParticipante){
		return unParticipante.esJoven() && unParticipante.esMujer()
	}
}

class Tradicionalista inherits Juez{
	override method leAgrada(unParticipante){
		return argentina.esGeneroPropio(unParticipante.genero()) 
	}
}

class Tecnico inherits Juez{
	override method leAgrada(unParticipante){
		return unParticipante.encajaApariencia()
	}
}


class Publico inherits Votante{
	override method votoPositivo(){
		return 2
	}
	override method leAgrada(unParticipante){
		return true
	}
}

class PublicoIdentificado inherits Publico{
	var juez
	override method leAgrada(unParticipante){
		return juez.leAgrada(unParticipante)
	}
}


object argentina{
	const generos = [tango,folklore]
	method esGeneroPropio(genero){
		return generos.contains(genero)
	}
}