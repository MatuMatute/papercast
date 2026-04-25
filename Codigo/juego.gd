class_name Juego
extends Node

func AnimacionFinalizada(_anim_name: StringName) -> void:
	$Musica.play()
	$Escenario1.IniciarBaile()
	$InterfazJugadores.EmpezarDeteccionDeControles()
