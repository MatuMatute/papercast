class_name Intertitulo
extends CanvasLayer

@export var Animacion : String

func _ready() -> void:
	$Animaciones.play(Animacion)

func LaAnimacionSeTermino(_anim_name: StringName) -> void:
	queue_free();
