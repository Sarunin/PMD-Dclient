extends VBoxContainer

onready var inputField = get_node("./CommandBox")
onready var chatLog = get_node("./ChatLog")
onready var player = get_node("../Map/Window/MapScene/Player")

var args
var bfr = ''
var tile_size = 32

# dictionary array for referencing chat colors
var colorSys = [
	{'name': 'system', 'color': '#ffaa00'},
	{'name': 'localplayer', 'color': '#00aaff'}
]

# /help comands list
var cmdList = [
		{'name': "/help", 'descp': " shows list of avalible comands"},
		{'name': '/look <direction>', 'descp': ' changes player rotation in declared direction'},
		{'name': "/move <direction>", 'descp': " changes player position in declared direction"}
	]

func _ready():
	chatLog.bbcode_text += '[color='+ colorSys[0]['color'] + ']'
	chatLog.bbcode_text += "Type '/help' for command list"
	chatLog.bbcode_text += '[/color]' + '\n'
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
					fmove(args[1])
				else:
					chatLog.bbcode_text += '[color='+ colorSys[0]['color'] + ']'
					chatLog.bbcode_text += "Missing agument <direction>"
					chatLog.bbcode_text += '[/color]' + '\n'
			"/look": 
				if args[1] != '':
					flook(args[1])
				else:
					chatLog.bbcode_text += '[color='+ colorSys[0]['color'] + ']'
					chatLog.bbcode_text += "Missing agument <direction>"
					chatLog.bbcode_text += '[/color]' + '\n'
			_: # errors check
				chatLog.bbcode_text += '[color='+ colorSys[0]['color'] + ']'
				chatLog.bbcode_text += "Invalid command"
				chatLog.bbcode_text += '[/color]' + '\n'
	else:
		chatLog.bbcode_text += '[color='+ colorSys[1]['color'] + ']'
		chatLog.bbcode_text += "["+ ' You ' +"]"
		chatLog.bbcode_text += '[/color]: ' + text + '\n'
	inputField.text = ''

func fhelp():
	
	for i in cmdList:
		chatLog.bbcode_text += '[color='+ colorSys[0]['color'] + ']'
		chatLog.bbcode_text += i["name"] + ' : '
		chatLog.bbcode_text += i["descp"]
		chatLog.bbcode_text += '[/color]' + '\n'

func fmove(dir):
	match dir:
		"up":
			player.dirrotate(dir)
			dirmove(0, -1)
		"up-right":
			player.dirrotate(dir)
			dirmove(1, -1)
		"right":
			player.dirrotate(dir)
			dirmove(1, 0)
		"down-right":
			player.dirrotate(dir)
			dirmove(1, 1)
		"down":
			player.dirrotate(dir)
			dirmove(0, 1)
		"down-left":
			player.dirrotate(dir)
			dirmove(-1, 1)
		"left":
			player.dirrotate(dir)
			dirmove(-1, 0)
		"up-left":
			player.dirrotate(dir)
			dirmove(-1, -1)
		_:
			chatLog.bbcode_text += '[color='+ colorSys[0]['color'] + ']'
			chatLog.bbcode_text += "Invalid agument <direction>"
			chatLog.bbcode_text += '[/color]' + '\n'

func flook(dir):
	match dir:
		"up":
			player.dirrotate(dir)
		"up-right":
			player.dirrotate(dir)
		"right":
			player.dirrotate(dir)
		"down-right":
			player.dirrotate(dir)
		"down":
			player.dirrotate(dir)
		"down-left":
			player.dirrotate(dir)
		"left":
			player.dirrotate(dir)
		"up-left":
			player.dirrotate(dir)
		'vfar':
			player.dirrotate(dir)
		'far':
			player.dirrotate(dir)
		'close':
			player.dirrotate(dir)
		_:
			chatLog.bbcode_text += '[color='+ colorSys[0]['color'] + ']'
			chatLog.bbcode_text += "Invalid agument <direction>"
			chatLog.bbcode_text += '[/color]' + '\n'

func dirmove(dirx, diry):	
	player.position.x += dirx * tile_size
	player.position.y += diry * tile_size
