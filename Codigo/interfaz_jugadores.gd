class_name InterfazJugadores
extends CanvasLayer

var Puntuacion : int

@export var Jugador1Trigger : bool
@export var Jugador2Trigger : bool
@export var Jugador3Trigger : bool
@export var Jugador4Trigger : bool

var StyleBoxJugadores : Array = [StyleBoxFlat.new(), StyleBoxFlat.new(), StyleBoxFlat.new(), StyleBoxFlat.new()]

var StyleBoxJugador1Activado : StyleBoxFlat = StyleBoxFlat.new()
var StyleBoxJugador2Activado : StyleBoxFlat = StyleBoxFlat.new()
var StyleBoxJugador3Activado : StyleBoxFlat = StyleBoxFlat.new()
var StyleBoxJugador4Activado : StyleBoxFlat = StyleBoxFlat.new()

func _ready() -> void:
	StyleBoxJugadores[0].bg_color = Color(0.631, 0.125, 1.0)
	StyleBoxJugadores[1].bg_color = Color(0.0, 0.545, 1.0)
	StyleBoxJugadores[2].bg_color = Color(0.941, 0.875, 0.098)
	StyleBoxJugadores[3].bg_color = Color(0.933, 0.0, 0.0)
	StyleBoxJugador1Activado.bg_color = StyleBoxJugadores[0].bg_color
	StyleBoxJugador2Activado.bg_color = StyleBoxJugadores[1].bg_color
	StyleBoxJugador3Activado.bg_color = StyleBoxJugadores[2].bg_color
	StyleBoxJugador4Activado.bg_color = StyleBoxJugadores[3].bg_color
	StyleBoxJugador1Activado.border_color = Color(0.0, 1.0, 1.0)
	StyleBoxJugador2Activado.border_color = Color(1.0, 1.0, 0.0)
	StyleBoxJugador3Activado.border_color = Color(1.0, 0.0, 1.0)
	StyleBoxJugador4Activado.border_color = Color(1.0, 1.0, 1.0)
	StyleBoxJugador1Activado.set_border_width_all(8)
	StyleBoxJugador2Activado.set_border_width_all(8)
	StyleBoxJugador3Activado.set_border_width_all(8)
	StyleBoxJugador4Activado.set_border_width_all(8)

func _process(_delta: float) -> void:
	if Jugador1Trigger and Input.is_action_just_pressed("Maestra"):
		Puntuacion += 100
		ActualizarPuntuacion()
		EsconderTriggerJugador1()
		Jugador1Trigger = false
	
	if Jugador2Trigger and Input.is_action_just_pressed("Erik"):
		Puntuacion += 100
		ActualizarPuntuacion()
		EsconderTriggerJugador2()
		Jugador2Trigger = false
	
	if Jugador3Trigger and Input.is_action_just_pressed("Christine"):
		Puntuacion += 100
		ActualizarPuntuacion()
		EsconderTriggerJugador3()
		Jugador3Trigger = false
	
	if Jugador4Trigger and Input.is_action_just_pressed("Vizconde"):
		Puntuacion += 100
		ActualizarPuntuacion()
		EsconderTriggerJugador4()
		Jugador4Trigger = false

func MostrarTriggerJugador1() -> void:
	$Jugador1.scale = Vector2(2.0, 2.0)
	$Jugador1.add_theme_stylebox_override("panel", StyleBoxJugador1Activado)

func MostrarTriggerJugador2() -> void:
	$Jugador2.scale = Vector2(2.0, 2.0)
	$Jugador2.add_theme_stylebox_override("panel", StyleBoxJugador2Activado)

func MostrarTriggerJugador3() -> void:
	$Jugador3.scale = Vector2(2.0, 2.0)
	$Jugador3.add_theme_stylebox_override("panel", StyleBoxJugador3Activado)

func MostrarTriggerJugador4() -> void:
	$Jugador4.scale = Vector2(2.0, 2.0)
	$Jugador4.add_theme_stylebox_override("panel", StyleBoxJugador4Activado)

func EsconderTriggerJugador1() -> void:
	$Jugador1.scale = Vector2(1.0, 1.0)
	$Jugador1.add_theme_stylebox_override("panel", StyleBoxJugadores[0])

func EsconderTriggerJugador2() -> void:
	$Jugador2.scale = Vector2(1.0, 1.0)
	$Jugador2.add_theme_stylebox_override("panel", StyleBoxJugadores[1])

func EsconderTriggerJugador3() -> void:
	$Jugador3.scale = Vector2(1.0, 1.0)
	$Jugador3.add_theme_stylebox_override("panel", StyleBoxJugadores[2])

func EsconderTriggerJugador4() -> void:
	$Jugador4.scale = Vector2(1.0, 1.0)
	$Jugador4.add_theme_stylebox_override("panel", StyleBoxJugadores[3])

func ActualizarPuntuacion() -> void:
	$Puntuacion.text = str(Puntuacion)

func EmpezarDeteccionDeControles() -> void:
	$EntradasDeTeclas.play("EntradasDeTeclas")
