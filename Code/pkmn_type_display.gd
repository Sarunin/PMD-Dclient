extends HBoxContainer

onready var type1 = $Type1
onready var type2 = $Type2
onready var typeText = $Types

func typeIcoDisplay(pkmnType1, pkmnType2):
	
	match pkmnType1:
		'bug': type1.texture.region = Rect2(0, 0, 64, 64)
		'dark': type1.texture.region = Rect2(64, 0, 64, 64)
		'dragon': type1.texture.region = Rect2(128, 0, 64, 64)
		'electric': type1.texture.region = Rect2(192, 0, 64, 64)
		'fairy': type1.texture.region = Rect2(256, 0, 64, 64)
		'fighting': type1.texture.region = Rect2(320, 0, 64, 64)
		'fire': type1.texture.region = Rect2(0, 64, 64, 64)
		'flying': type1.texture.region = Rect2(64, 64, 64, 64)
		'ghost': type1.texture.region = Rect2(128, 64, 64, 64)
		'grass': type1.texture.region = Rect2(192, 64, 64, 64)
		'ground': type1.texture.region = Rect2(256, 64, 64, 64)
		'ice': type1.texture.region = Rect2(320, 64, 64, 64)
		'normal': type1.texture.region = Rect2(0, 128, 64, 64)
		'poison': type1.texture.region = Rect2(64, 128, 64, 64)
		'psychic': type1.texture.region = Rect2(128, 128, 64, 64)
		'rock': type1.texture.region = Rect2(192, 128, 64, 64)
		'steel': type1.texture.region = Rect2(256, 128, 64, 64)
		'water': type1.texture.region = Rect2(320, 128, 64, 64)
	type2.visible = true
	match pkmnType2:
		'bug': type2.texture.region = Rect2(0, 0, 64, 64)
		'dark': type2.texture.region = Rect2(64, 0, 64, 64)
		'dragon': type2.texture.region = Rect2(128, 0, 64, 64)
		'electric': type2.texture.region = Rect2(192, 0, 64, 64)
		'fairy': type2.texture.region = Rect2(256, 0, 64, 64)
		'fighting': type2.texture.region = Rect2(320, 0, 64, 64)
		'fire': type2.texture.region = Rect2(0, 64, 64, 64)
		'flying': type2.texture.region = Rect2(64, 64, 64, 64)
		'ghost': type2.texture.region = Rect2(128, 64, 64, 64)
		'grass': type2.texture.region = Rect2(192, 64, 64, 64)
		'ground': type2.texture.region = Rect2(256, 64, 64, 64)
		'ice': type2.texture.region = Rect2(320, 64, 64, 64)
		'normal': type2.texture.region = Rect2(0, 128, 64, 64)
		'poison': type2.texture.region = Rect2(64, 128, 64, 64)
		'psychic': type2.texture.region = Rect2(128, 128, 64, 64)
		'rock': type2.texture.region = Rect2(192, 128, 64, 64)
		'steel': type2.texture.region = Rect2(256, 128, 64, 64)
		'water': type2.texture.region = Rect2(320, 128, 64, 64)
		_: type2.visible = false

func typeNameDisplay(pkmnType1, pkmnType2):
	if pkmnType2 != '':
		$Types.text = pkmnType1 + " / " + pkmnType2
	else:
		$Types.text = pkmnType1

