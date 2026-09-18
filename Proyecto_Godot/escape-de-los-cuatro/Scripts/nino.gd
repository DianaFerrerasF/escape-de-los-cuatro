extends CharacterBody2D

const VELOCIDAD = 150.0
const RUIDO_MAX = 100.0
const TASA_AUMENTO = 60.0
const TASA_DECAIMIENTO = 40.0
const TIEMPO_RESCATE = 3.0

@export var nombre_nino: String = "Nino"
@export var color_base: Color = Color(0.2, 0.4, 1.0)

var ruido_actual = 0.0
var esta_cubierto = false
var es_controlado = false
var esta_capturado = false
var progreso_rescate = 0.0
var nino_en_rango = null

@onready var sprite: Sprite2D = $Sprite2D
@onready var camara: Camera2D = $Camera2D

func _physics_process(delta):
	if esta_capturado:
		velocity = Vector2.ZERO
		move_and_slide()
		return

	var puede_moverse = true

	if es_controlado and nino_en_rango != null and Input.is_action_pressed("accion_rescate"):
		puede_moverse = false
		progreso_rescate += delta
		if progreso_rescate >= TIEMPO_RESCATE:
			nino_en_rango.set_capturado(false)
			progreso_rescate = 0.0
	else:
		progreso_rescate = 0.0

	if es_controlado and puede_moverse:
		var direccion = Input.get_vector("mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")
		velocity = direccion * VELOCIDAD
	else:
		velocity = Vector2.ZERO
	move_and_slide()

	if es_controlado and puede_moverse and velocity.length() > 0:
		ruido_actual += TASA_AUMENTO * delta
	else:
		ruido_actual -= TASA_DECAIMIENTO * delta
	ruido_actual = clamp(ruido_actual, 0.0, RUIDO_MAX)

	var proporcion = ruido_actual / RUIDO_MAX
	sprite.modulate = color_base.lerp(Color(1, 0, 0), proporcion)

func set_controlado(valor: bool):
	if esta_capturado:
		return
	es_controlado = valor
	camara.enabled = valor

func set_capturado(valor: bool):
	esta_capturado = valor
	if valor:
		es_controlado = false
		camara.enabled = false
		sprite.modulate = Color(0.4, 0.4, 0.4)
	else:
		sprite.modulate = color_base

func _on_area_rescate_body_entered(body):
	if body.is_in_group("jugador") and body != self and body.esta_capturado:
		nino_en_rango = body

func _on_area_rescate_body_exited(body):
	if body == nino_en_rango:
		nino_en_rango = null
