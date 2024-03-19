extends MarginContainer

enum {WIN, MIN, MAX, FULL, EXC} # TODO Mover esta línea a Config

@export_category("Exit Buttons")
@export var back: Button

func _on_visibility_changed():
	back.grab_focus()

func _on_settingscheckbutton_toggled(toggled_on): # TODO HAcer la función de pantalla completa
	if toggled_on == true:
		DisplayServer.call_deferred("window_set_mode", FULL)
	else:
		DisplayServer.call_deferred("window_set_mode", WIN)

func _on_back_button_mouse_entered():
	back.grab_focus()

func _on_settingscheckbutton_mouse_entered():
	$MC/HC/VB/CC/FullScreenCheck/Settingscheckbutton.grab_focus()


