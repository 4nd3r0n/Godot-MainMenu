extends Node

func _ready() -> void:
	pass

func fun(): # Generar un número aleatorio del 0, 2201
	randomize()
	return randi_range(0, 2201)

func quit(): # Función para salir del juego
	get_tree().quit()
