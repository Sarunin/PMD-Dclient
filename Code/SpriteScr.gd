extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.modulate = Color('#00aaff')
	pass # Replace with function body.

func dirrotate(option):
	match option:
		'up':
			$Sprite.texture.region = Rect2(32, 0, 32, 32)
		"up-right":
			$Sprite.texture.region = Rect2(64, 0, 32, 32)
		"right":
			$Sprite.texture.region = Rect2(64, 32, 32, 32)
		"down-right":
			$Sprite.texture.region = Rect2(64, 64, 32, 32)
		"down":
			$Sprite.texture.region = Rect2(32, 64, 32, 32)
		"down-left":
			$Sprite.texture.region = Rect2(0, 64, 32, 32)
		"left":
			$Sprite.texture.region = Rect2(0, 32, 32, 32)
		"up-left":
			$Sprite.texture.region = Rect2(0, 0, 32, 32)
		"vfar":
			$Camera2D.zoom.x = 2
			$Camera2D.zoom.y = 2
		"far":
			$Camera2D.zoom.x = 1
			$Camera2D.zoom.y = 1
		"close":
			$Camera2D.zoom.x = 0.5
			$Camera2D.zoom.y = 0.5
