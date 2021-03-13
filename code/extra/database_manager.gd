extends Node

var pokemon

func _ready():
	var f = File.new()
	f.open("res://resources/data/pokedex.res", 1) # 1 to read
	pokemon = parse_json(f.get_as_text())
	f.close()

