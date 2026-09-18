extends CharacterBody2D

const VELOCIDAD = 150.0
const RUIDO_MAX = 100.0
const TASA_AUMENTO = 60.0
const TASA_DECAIMIENTO = 40.0

var ruido_actual = 0.0
var esta_cubierto = false

@onready var sprite: Sprite2D = $Sprite2D

func _physics_process(delta):
	var direccion = Input.get_vector("mover_izquierda", "mover_derecha", "mover_arriba", "mover_abajo")
	velocity = direccion * VELOCIDAD
	move_and_slide()

	if direccion.length() > 0:
		ruido_actual += TASA_AUMENTO * delta
	else:
		ruido_actual -= TASA_DECAIMIENTO * delta
	ruido_actual = clamp(ruido_actual, 0.0, RUIDO_MAX)

	var proporcion = ruido_actual / RUIDO_MAX
	sprite.modulate = Color(0, 0, 1).lerp(Color(1, 0, 0), proporcion)
