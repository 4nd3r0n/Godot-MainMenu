extends Node

var conf_file: String = "user//config"
var conf_player_file: String = "user//player"

func _ready():
	var _conf = Conf.new()
	var _conf_player = Conf_Player.new()

class Conf:
	# Windows Config
	var full_screen: bool

	# User Interface Config
	var splash_scene: bool

	func loadConfig():
		pass

	func saveConfig():
		pass

	func resetConfig():
		pass

class Conf_Player:
	# User Player Config
	var name_player: String

	func loadConfig():
		pass

	func saveConfig():
		pass

	func resetConfig():
		pass

func isExistConfFile(_file: String):
	pass

func isExistConfigPlayerFile(_file: String):
	pass
