class_name BaseMove

var name: String
var name_id: String
var description: String
var power: int
var accuracy: float
var sp_cost: int
var effect: int
var type: int
var category: int
var move_type: int
var move_range: int
var priority
var contact
var snatchable
var defrosts
var reflected
var blocked
var mirrored
var king_rock



func _init(move_data):
	name = move_data.name
	name_id = move_data.name_id
	description = move_data.description
	power = move_data.power
	accuracy = move_data.accuracy
	sp_cost = move_data.sp_cost
	effect = move_data.effect
	type = move_data.type
	category = move_data.category
	move_type = move_data.move_type
	move_range = move_data.range
	priority = move_data.priority
	contact = move_data.contact
	snatchable = move_data.snatchable
	defrosts = move_data.defrosts
	reflected = move_data.reflected
	blocked = move_data.blocked
	mirrored = move_data.mirrored
	king_rock = move_data.king_rock


func calculate_acc() -> bool:
	if accuracy == 0:
		return true
	return randf() <= accuracy


func execute(data):
	if calculate_acc():
		on_acc_pass(data)
	else:
		on_acc_fail(data)


func on_acc_pass(_data):
	pass


func on_acc_fail(_data):
	pass
