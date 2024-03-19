extends Node

@export_category("Load Main Scene")
@export var load_ss: String
@export var load_ms: String

@export_category("Load Egg Scene")
@export var egg: int = 666
@export var load_egg: String

func _ready() -> void:
	var fun: int = Global.fun()
	load_scene(fun) # Load Game with a Main Scene

func load_scene(_fun):
	var loadss: bool = true # Load SplashScreen

	match _fun:
		egg:
			get_tree().call_deferred("change_scene_to_file", load_egg)

		_: # Default Scene
			if loadss == true:
				get_tree().call_deferred("change_scene_to_file", load_ss)
			else:
				get_tree().call_deferred("change_scene_to_file", load_ms)
