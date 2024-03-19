extends Control

@export_category("Load Main Scene")
@export var main_scene: String

@export_category("Animated Logo")
@export var animateLogo: AnimationPlayer # Nodo de AnimationPlayer

func _ready() -> void:
	animateLogo.play("SplashScreenAnimation") # Iniciar animación del logo

func _on_slash_screen_ap_animation_finished(anim_name: String): # Al terminar la animación del logo
	if anim_name == "SplashScreenAnimation":
		get_tree().call_deferred("change_scene_to_file", main_scene)
	else:
		pass # TODO: Hacer un Popup de error. Popup: Error al intentar cargar la escena principal.
