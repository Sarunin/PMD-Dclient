extends BaseMove
class_name PhysicalMove

class PhysicalAttackMove extends PhysicalMove:
	func on_acc_pass(data):
		var level = data.invoker.level
		var attack = data.invoker.atk
		var defence = data.invoker.def
		var damage = (((2*level/5+2)*level*attack)/(50*defence)+2)
		data.target.HP -= damage
