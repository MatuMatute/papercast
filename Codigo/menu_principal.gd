extends CanvasLayer

var Nivel : PackedScene = preload("res://Escenas/escenario_1.tscn")
var Intertitulo : PackedScene = preload("res://Escenas/intertitulo.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_comenzar_pressed() -> void:
	pass # Replace with function body.


func _on_opciones_pressed() -> void:
	pass # Replace with function body.


func _on_salir_pressed() -> void:
	get_tree().quit()
