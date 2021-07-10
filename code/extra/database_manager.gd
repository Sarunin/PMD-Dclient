extends Node

var pokemon
var moves

func _ready():
	var f = File.new()
	f.open("res://resources/data/pokedex.json", 1) # 1 to read
	pokemon = parse_json(f.get_as_text())
	f.close()
	f.open("res://resources/data/moves.json", 1) # 1 to read
	moves = parse_json(f.get_as_text())
	f.close()

func get_move(id):
	var data = moves[id]
	return Move.get_move(data)

