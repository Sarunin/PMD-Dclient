extends VBoxContainer

onready var inputField = get_node("./CommandBox")
onready var chatLog = get_node("./ChatLog")
onready var player = get_node("../Map/Window/MapScene/Player")

var args
var bfr = ''
var tile_size = 32

# /help comands list
var cmdList = [
		{'name': "/help", 'description': " shows list of avalible comands"},
		{'name': '/look <direction>', 'description': ' changes player rotation in declared direction'},
		{'name': "/move <direction>", 'description': " changes player position in declared direction"}
	]


func _ready():
	chatLog.print({
		'color': 'system',
		'content': "type '/help' for command list",
	})
	inputField.connect("text_entered", self, "text_entered")
	
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_UP:
			inputField.text = bfr


func text_entered(text):
	bfr = text # line for last comand recall
	args = text.split(' ')
	args.resize(2)
	if args[0].begins_with('/'):
		match args[0]: # comand menu
			"/help": fhelp()
			"/move": 
				if args[1] != '':
					chatLog.print(fmove(args[1]))
				else:
					chatLog.print({
						'color': 'system',
						'content': 'Missing argument <direction>',
					})
			"/look": 
				if args[1] != '':
					chatLog.print(flook(args[1]))
				else:
					chatLog.print({
						'color': 'system',
						'content': 'Required direction argument',
					})
			_: # errors check
				chatLog.print({
					'color': 'system',
					'content': 'Invalid command',
				})
	else:
		chatLog.print_message({
			'user_color': 'local_player',
			'user': 'You',
			'color': 'message',
			'content': text,
		})
	inputField.text = ''


func fhelp():
	for cmd in cmdList:
		chatLog.print({
			'color': 'system',
			'content': cmd.name + " : " + cmd.description,
		})


func fmove(dir):
	var dirs = {
		"up": Vector2(0, -1),
		"up-right": Vector2(1, -1),
		"right": Vector2(1, 0),
		"down-right": Vector2(1, 1),
		"down": Vector2(0, 1),
		"down-left": Vector2(-1, 1),
		"left": Vector2(-1, 0),
		"up-left": Vector2(-1, -1),
	}
	if not dirs.has(dir):
		return {
			'color': 'system',
			'content': 'Invalid argument: ' + dir + "; Expected a direction",
		}
	player.position += dirs[dir] * tile_size
	flook(dir)
	return {
		'color': 'system',
		'content': 'Moved ' + dir,
	}


func flook(dir):
	if dir in ["up", "up-right", "right", "down-right", "down", "down-left", "left", "up-left"]:
		player.dirrotate(dir)
		return {
			'color': 'system',
			'content': 'Looked ' + dir,
		}
	return {
		'color': 'system',
		'content': 'Invalid argument: ' + dir + '; Expected a direction',
	}
