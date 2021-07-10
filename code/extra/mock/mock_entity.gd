class_name MockEntity

var name
var HP = 100 setget HP_set, HP_get
var level = 5 setget level_set, level_get
var atk = 10 setget atk_set, atk_get
var def = 10 setget def_set, def_get

func _init(n):
	name = n.name
#	HP = n.hp
#	level = n.level
#	atk = n.atk
#	def = n.def


func HP_get():
	print("MOCK {} HP GET: {}".format([name, HP]))
	return HP

func HP_set(value):
	print("MOCK {} HP SET: {}".format([name, value]))
	HP = value

func level_get():
	print("MOCK {} LVL READ: {}".format([name, level]))
	return level

func level_set(value):
	print("MOCK {} LVL SET: {}".format([name, value]))
	level = value

func atk_get():
	print("MOCK {} ATK GET: {}".format([name, atk]))
	return atk

func atk_set(value):
	print("MOCK {} ATK SET: {}".format([name, value]))
	atk = value

func def_get():
	print("MOCK {} DEF GET: {}".format([name, def]))
	return def

func def_set(value):
	print("MOCK {} DEF SET:{}".format([name, value]))
	def = value
