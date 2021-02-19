extends Button

export(String) var tag = ""

onready var thisButton = get_node(".")
onready var pauseMenu_pause = get_node("../../Pause")
onready var pauseMenu_run = get_node("../Pause")

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
		"PauseButton":
			pauseMenu_run.visible = true
		"ResumeButton":
			pauseMenu_pause.visible = false
		"ExitButton": get_tree().quit()
