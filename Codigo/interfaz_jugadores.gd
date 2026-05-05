class_name InterfazJugadores
extends CanvasLayer

var Puntuacion : int

var JugadorTrigger : Array = [false, false, false, false]
var FallarComando : Array = [false, false, false, false]

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
	if Input.is_action_just_pressed("Maestra"):
		if JugadorTrigger[0]:
			Puntuacion += 100
			ActualizarPuntuacion()
			EsconderTriggerJugador1()
		else:
			if !FallarComando[0] and $Jugador1.is_visible_in_tree(): FallarComando[0] = true
	
	if Input.is_action_just_pressed("Erik"):
		if JugadorTrigger[1]:
			Puntuacion += 100
			ActualizarPuntuacion()
			EsconderTriggerJugador2()
		else:
			if !FallarComando[1] and $Jugador2.is_visible_in_tree(): FallarComando[1] = true
	
	if Input.is_action_just_pressed("Christine"):
		if JugadorTrigger[2]:
			Puntuacion += 100
			ActualizarPuntuacion()
			EsconderTriggerJugador3()
		else:
			if !FallarComando[2] and $Jugador3.is_visible_in_tree(): FallarComando[2] = true
	
	if Input.is_action_just_pressed("Vizconde"):
		if JugadorTrigger[3]:
			Puntuacion += 100
			ActualizarPuntuacion()
			EsconderTriggerJugador4()
		else:
			if !FallarComando[3] and $Jugador4.is_visible_in_tree(): FallarComando[3] = true

func MostrarTriggerJugador1() -> void:
	$Jugador1.scale = Vector2(2.0, 2.0)
	$Jugador1.add_theme_stylebox_override("panel", StyleBoxJugador1Activado)
	
	if !FallarComando[0]: JugadorTrigger[0] = true

func MostrarTriggerJugador2() -> void:
	$Jugador2.scale = Vector2(2.0, 2.0)
	$Jugador2.add_theme_stylebox_override("panel", StyleBoxJugador2Activado)
	
	if !FallarComando[1]: JugadorTrigger[1] = true

func MostrarTriggerJugador3() -> void:
	$Jugador3.scale = Vector2(2.0, 2.0)
	$Jugador3.add_theme_stylebox_override("panel", StyleBoxJugador3Activado)
	
	if !FallarComando[2]: JugadorTrigger[2] = true

func MostrarTriggerJugador4() -> void:
	$Jugador4.scale = Vector2(2.0, 2.0)
	$Jugador4.add_theme_stylebox_override("panel", StyleBoxJugador4Activado)
	
	if !FallarComando[3]: JugadorTrigger[3] = true

func EsconderTriggerJugador1() -> void:
	$Jugador1.scale = Vector2(1.0, 1.0)
	$Jugador1.add_theme_stylebox_override("panel", StyleBoxJugadores[0])
	
	if FallarComando[0]: FallarComando[0] = false
	if JugadorTrigger[0]: JugadorTrigger[0] = false

func EsconderTriggerJugador2() -> void:
	$Jugador2.scale = Vector2(1.0, 1.0)
	$Jugador2.add_theme_stylebox_override("panel", StyleBoxJugadores[1])
	
	if FallarComando[1]: FallarComando[1] = false
	if JugadorTrigger[1]: JugadorTrigger[1] = false

func EsconderTriggerJugador3() -> void:
	$Jugador3.scale = Vector2(1.0, 1.0)
	$Jugador3.add_theme_stylebox_override("panel", StyleBoxJugadores[2])
	
	if FallarComando[2]: FallarComando[2] = false
	if JugadorTrigger[2]: JugadorTrigger[2] = false

func EsconderTriggerJugador4() -> void:
	$Jugador4.scale = Vector2(1.0, 1.0)
	$Jugador4.add_theme_stylebox_override("panel", StyleBoxJugadores[3])
	
	if FallarComando[3]: FallarComando[3] = false
	if JugadorTrigger[3]: JugadorTrigger[3] = false

func ActualizarPuntuacion() -> void:
	$Puntuacion.text = str(Puntuacion)

func EmpezarDeteccionDeControles() -> void:
	$EntradasDeTeclas.play("EntradasDeTeclas")
