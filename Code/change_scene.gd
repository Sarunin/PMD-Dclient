extends Button

export(String) var tag = ""

onready var thisButton = get_node(".")
var scene_backup = PackedScene.new()
var scene_loadup = load("res://Scenes/GameScene.tscn")
var pause = false

func _ready():
	thisButton.connect("pressed", self, "_button_pressed")
	scene_backup.pack(get_tree().get_scene("res://Scenes/GameScene.tscn"))

func _button_pressed():
	match tag:
		"GameMenu": 
			
			if pause == false:
				if get_tree().change_scene("res://Scenes/GameScene.tscn") != OK:
					print("Loading Failure")
			else:
				if get_tree().change_scene("res://Scenes/backup.tscn") != OK:
					print("Loading Failure")
		"MainMenu": 
			pause = true
			scene_backup.pack(get_tree().get_current_scene())
			ResourceSaver.save("res://Scenes/backup.tscn", scene_backup)
			if get_tree().change_scene("res://Scenes/MainMenu.tscn") != OK:
				print("Loading Failure")
		"ExitButton": get_tree().quit()
