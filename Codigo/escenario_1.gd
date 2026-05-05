extends Node2D

var packedSceneIntertitulo : PackedScene = preload("res://Escenas/intertitulo.tscn")

func IniciarBaile() -> void:
	$BailesYCamara.play("Escena1")
	$Musica.play()

func AnimacionEscenasFinalizada(anim_name: StringName) -> void:
	match anim_name:
		"Escena1":
			$Musica.set_stream_paused(true)
			var EscenaIntertitulo : Intertitulo = packedSceneIntertitulo.instantiate()
			EscenaIntertitulo.Animacion = "transicion"
			EscenaIntertitulo.get_node("Animaciones").connect("animation_finished", IntertituloFinalizado)
			add_child(EscenaIntertitulo)

func IntertituloFinalizado(anim_name: StringName) -> void:
	match anim_name:
		"transicion":
			$Musica.set_stream_paused(false)
			$BailesYCamara.play("Escena2") 
