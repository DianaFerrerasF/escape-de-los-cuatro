extends CharacterBody2D

const VELOCIDAD = 100.0
const TIEMPO_BUSQUEDA_MAX = 3.0

@onready var sprite: Sprite2D = $Sprite2D

var objetivo = null
var detectado_antes = false
var ultima_posicion_conocida = Vector2.ZERO
var en_busqueda = false
var tiempo_busqueda = 0.0

func _physics_process(delta):
	var detectado_ahora = objetivo != null and not objetivo.esta_cubierto

	if detectado_ahora:
		var direccion = (objetivo.global_position - global_position).normalized()
		velocity = direccion * VELOCIDAD
		ultima_posicion_conocida = objetivo.global_position
		en_busqueda = false
	elif detectado_antes:
		en_busqueda = true
		tiempo_busqueda = TIEMPO_BUSQUEDA_MAX
		_moverse_a_ultima_posicion()
	elif en_busqueda:
		_moverse_a_ultima_posicion()
		tiempo_busqueda -= delta
		if tiempo_busqueda <= 0.0:
			en_busqueda = false
	else:
		velocity = Vector2.ZERO

	detectado_antes = detectado_ahora
	move_and_slide()

func _moverse_a_ultima_posicion():
	var distancia = global_position.distance_to(ultima_posicion_conocida)
	if distancia > 5.0:
		var direccion = (ultima_posicion_conocida - global_position).normalized()
		velocity = direccion * VELOCIDAD
	else:
		velocity = Vector2.ZERO

func _on_area_deteccion_body_entered(body):
	if body.is_in_group("jugador"):
		objetivo = body

func _on_area_deteccion_body_exited(body):
	if body == objetivo:
		objetivo = null
