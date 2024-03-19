extends MarginContainer

@export_category("Menu Buttons")
@export var play_button: Button
@export var settings_button: Button
@export var exit_button: Button

func _ready() -> void:
	play_button.grab_focus()

func _on_visibility_changed():
	play_button.grab_focus()

func _on_play_button_mouse_entered():
	play_button.grab_focus()

func _on_settings_button_mouse_entered():
	settings_button.grab_focus()

func _on_exit_button_mouse_entered():
	exit_button.grab_focus()
