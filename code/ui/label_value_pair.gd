extends HBoxContainer

var value: int = 0 setget value_set, value_get

onready var label = $Label
onready var value_label = $Value


func value_set(new_value):
	value_label.text = String(new_value)
	value = new_value


func value_get():
	return value
