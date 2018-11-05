import Cantantes.*
import calificadores.*

object elegidos{
	var jurado = []
	var participantes = []
	
	method agregarJuez(unJuez){
		jurado.add(unJuez)
	}
	
	method agregarParticipante(unParticipante){
		participantes.add(unParticipante)
	}
	method ganador(){
		return participantes.max({unParticipante => self.puntosTotales(unParticipante)})
	}
	method puntosTotales(unParticipante){
		return jurado.sum({integrante => integrante.puntosPara(unParticipante)})
	}
}
