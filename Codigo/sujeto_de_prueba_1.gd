class_name SujetoDePrueba
extends CharacterBody2D

@export var cuantoVaATardarDaniEnAprenderGDScript : int = 200

# ES IGUAL QUE UPDATE EN UNITY, DANI.
func _process(_delta: float) -> void:
	velocity = Vector2.ZERO;
	if Input.is_action_pressed("Izquierda"):
		velocity += Vector2.LEFT;
	if Input.is_action_pressed("Abajo"):
		velocity += Vector2.DOWN;
	if Input.is_action_pressed("Derecha"):
		velocity += Vector2.RIGHT;
	if Input.is_action_pressed("Arriba"):
		velocity += Vector2.UP;
	
	velocity = velocity.normalized() * cuantoVaATardarDaniEnAprenderGDScript;
	move_and_slide();
