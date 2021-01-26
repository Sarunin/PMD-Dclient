extends Node2D

var tile_size = 32
var inputs = {
	"ui_right": Vector2.RIGHT,
	"ui_left": Vector2.LEFT,
	"ui_up": Vector2.UP,
	"ui_down": Vector2.DOWN
}
func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)
			
func move(dir):
	position += inputs[dir] * tile_size
	match [dir]:
		[1,0]:
			set_rotation_degrees(0)
		[0,1]:
			set_rotation_degrees(90)
		[-1,0]: 
			set_rotation_degrees(180)
		[0,-1]:
			set_rotation_degrees(270)

