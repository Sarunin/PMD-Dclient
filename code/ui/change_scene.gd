extends Button

export(String) var tag = ""

onready var thisButton = get_node(".")

func _ready():
	thisButton.connect("pressed", self, "_button_pressed")

func _button_pressed():
	get_tree().paused = false
	match tag:
		"GameMenu": 
			if get_tree().change_scene("res://scenes/scenes/GameScene.tscn") != OK:
				print("Loading Failure")
		"MainMenu":
			if get_tree().change_scene("res://scenes/scenes/MainMenu.tscn") != OK:
				print("Loading Failure")
		"ExitButton": get_tree().quit()
