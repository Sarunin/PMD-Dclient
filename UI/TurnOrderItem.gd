extends PanelContainer

class_name TurnOrderItem

export var order_name: String setget order_name_set, order_name_get
export var hp: int setget hp_set, hp_get
export var sp: int setget sp_set, sp_get

var _order_name: String
var _hp
var _sp

onready var name_label = $VBoxContainer/NameLabel
onready var hp_label = $VBoxContainer/HPLabel
onready var sp_label = $VBoxContainer/SPLabel

func order_name_set(value):
	_order_name = value
	name_label.text = value

func order_name_get():
	return _order_name

func hp_set(value):
	_hp = value
	hp_label.text = "HP: " + String(value)

func hp_get():
	return _hp

func sp_set(value):
	_sp = value
	sp_label.text = "SP: " + String(value)

func sp_get():
	return _sp

