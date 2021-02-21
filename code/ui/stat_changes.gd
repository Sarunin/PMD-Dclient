extends HBoxContainer

onready var AtkStat = get_node("PowerStatChanges/PowerChanges/Atk")
onready var DefStat = get_node("PowerStatChanges/PowerChanges/Def")
onready var SAtkStat = get_node("PowerStatChanges/PowerChanges/SAtk")
onready var SDefStat = get_node("PowerStatChanges/PowerChanges/SDef")
onready var SpdStat = get_node("OtherStatChanges/OtherChanges/Spd")

onready var WeightStat = get_node("OtherStatChanges/OtherChanges/Weight")
onready var AccStat = get_node("OtherStatChanges/OtherChanges/Acc")
onready var EvaStat = get_node("OtherStatChanges/OtherChanges/Eva")

var multiplier = [1,1,1,1,1,1,1,1]

func change(name, value):
	
	var value1 = float(value)
	
	match name:
		"Atk": 
			AtkStat.text = textChange(value)
			multiplier[0] = multipierChange(name, value1)
		"Def": 
			DefStat.text = textChange(value)
			multiplier[1] = multipierChange(name, value1)
		"SAtk": 
			SAtkStat.text = textChange(value)
			multiplier[2] = multipierChange(name, value1)
		"SDef": 
			SDefStat.text = textChange(value)
			multiplier[3] = multipierChange(name, value1)
		"Spd": 
			SpdStat.text = textChange(value)
			multiplier[4] = multipierChange(name, value1)
		"Weight": 
			WeightStat.text = textChange(value)
			multiplier[5] = multipierChange(name, value1)
		"Acc": 
			AccStat.text = textChange(value)
			multiplier[6] = multipierChange(name, value1)
		"Eva": 
			EvaStat.text = textChange(value)
			multiplier[7] = multipierChange(name, value1)

func textChange(num):
	match num:
		'6':
			return("↑ ↑ ↑ ↑ ↑ ↑")
		'5':
			return("↑ ↑ ↑ ↑ ↑ •")
		'4':
			return("↑ ↑ ↑ ↑ • •")
		'3':
			return("↑ ↑ ↑ • • •")
		'2':
			return("↑ ↑ • • • •")
		'1':
			return("↑ • • • • •")
		'0':
			return("• • • • • •")
		'-1':
			return("↓ • • • • •")
		'-2':
			return("↓ ↓ • • • •")
		'-3':
			return("↓ ↓ ↓ • • •")
		'-4':
			return("↓ ↓ ↓ ↓ • •")
		'-5':
			return("↓ ↓ ↓ ↓ ↓ •")
		'-6':
			return("↓ ↓ ↓ ↓ ↓ ↓")
	
func multipierChange(name, num):
	var value
	match name:
		"Weight":
			if num == 0:
				value = 1
			elif num > 0:
				value = (1+num)/1
			else:
				value = 1/(1-num)
		"Acc":
			if num == 0:
				value = 1
			elif num > 0:
				value = (3+num)/3
			else:
				value = 3/(3-num)
		"Eva":
			if num == 0:
				value = 1
			elif num > 0:
				value = (3+num)/3
			else:
				value = 3/(3-num)
		_:
			if num == 0:
				value = 1
			elif num > 0:
				value = (2+num)/2
			else:
				value = 2/(2-num)
	print(value)
	return value
