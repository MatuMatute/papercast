class_name Juego
extends Node

func AnimacionFinalizada(_anim_name: StringName) -> void:
	$PrimeraCancion.IniciarBaile()
	$InterfazJugadores.EmpezarDeteccionDeControles()
