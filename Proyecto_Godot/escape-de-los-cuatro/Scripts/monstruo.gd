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
	var detectado_ahora = objetivo != null and not objetivo.esta_cubierto and not objetivo.esta_capturado

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
	if body.is_in_group("jugador") and not body.esta_capturado:
		objetivo = body

func _on_area_deteccion_body_exited(body):
	if body == objetivo:
		objetivo = null

func _on_area_captura_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador") and body == objetivo and not body.esta_cubierto:
		body.set_capturado(true)
		objetivo = null
		en_busqueda = false

func _on_area_captura_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
