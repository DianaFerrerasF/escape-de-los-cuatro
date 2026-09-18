extends Node2D

var ninos = []
var indice_actual = 0

func _ready():
	ninos = get_tree().get_nodes_in_group("jugador")
	if ninos.size() > 0:
		_controlar_indice(0)

func _process(delta):
	if ninos.size() > 0 and ninos[indice_actual].esta_capturado:
		_cambiar_al_siguiente_disponible()

func _unhandled_input(event):
	for i in ninos.size():
		if event.is_action_pressed("seleccionar_nino_%d" % (i + 1)):
			if not ninos[i].esta_capturado:
				_controlar_indice(i)

func _cambiar_al_siguiente_disponible():
	for paso in range(1, ninos.size() + 1):
		var candidato = (indice_actual + paso) % ninos.size()
		if not ninos[candidato].esta_capturado:
			_controlar_indice(candidato)
			return

func _controlar_indice(indice):
	for i in ninos.size():
		ninos[i].set_controlado(i == indice)
	indice_actual = indice
