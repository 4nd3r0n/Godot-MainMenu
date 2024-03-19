extends Control

@export_category("Menus")
@export var mainmenu: MarginContainer
@export var play: MarginContainer
@export var settings: MarginContainer
@export var exit: MarginContainer

func _ready() -> void:
	mainmenu.visible = true
	settings.visible = false
	exit.visible = false

func _on_exit_button_pressed():
	mainmenu.visible = false
	exit.visible = true

func _on_cancel_button_pressed():
	exit.visible = false
	mainmenu.visible = true

func _on_settings_button_pressed():
	mainmenu.visible = false
	settings.visible = true

func _on_back_button_pressed():
	settings.visible = false
	mainmenu.visible = true
