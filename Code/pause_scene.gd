extends Button

export(String) var tag = ""

onready var thisButton = get_node(".")
onready var pauseMenu = get_node("/root/Root/UI/Pause")

func _ready():
	thisButton.connect("pressed", self, "_button_pressed")

func _button_pressed():
	match tag:
		"PauseButton":
			pauseMenu.visible = true
			get_tree().paused = true
		"ResumeButton":
			pauseMenu.visible = false
			get_tree().paused = false
