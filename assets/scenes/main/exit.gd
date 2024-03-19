extends MarginContainer

@export_category("Exit Buttons")
@export var exit: Button
@export var cancel: Button

func _on_visibility_changed():
	cancel.grab_focus()

func _on_exit_button_pressed():
	Global.quit()

func _on_cancel_button_mouse_entered():
	cancel.grab_focus()

func _on_exit_button_mouse_entered():
	exit.grab_focus()
