extends Button

export(String) var tag = ""

onready var thisButton = get_node(".")

func _ready():
	thisButton.connect("pressed", self, "_button_pressed")

func _button_pressed():
	match tag:
		"GameMenu": 
			if get_tree().change_scene("res://Scenes/GameScene.tscn") != OK:
				print("Loading Failure")
		"MainMenu": 
			if get_tree().change_scene("res://Scenes/MainMenu.tscn") != OK:
				print("Loading Failure")
		"ExitButton": get_tree().quit()
