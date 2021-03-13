extends Node2D


signal died
signal moved(last_pos, new_pos)



var max_HP: int
var HP: int setget HP_set, HP_get
var max_SP: int = 100
var SP: int setget SP_set, SP_get

var level: int = 0


var major_status setget major_status_set, major_status_get
var minor_statuses: MinorStatusList


func HP_set(value):
	if value <= 0:
		_on_death()
	HP = clamp(value, 0, max_HP)


func HP_get():
	return HP


func SP_set(value):
	if value > max_SP:
		_on_SP_overflow()
	if value <= 0:
		_on_SP_depletion()
	SP = max(value, 0)


func SP_get():
	return SP


func major_status_set(value):
	if major_status != null:
		return
	major_status = value


func major_status_get():
	return major_status


func _on_death():
	emit_signal("died")



func _on_SP_overflow():
	pass


func _on_SP_depletion():
	pass
