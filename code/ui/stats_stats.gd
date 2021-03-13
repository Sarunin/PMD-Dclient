extends VBoxContainer


onready var hp = $Hp
onready var atk = $Atk
onready var def = $Def
onready var s_atk = $SAtk
onready var s_def = $SDef
onready var spd = $Spd


func update_stats(stats):
	hp.value = round((((2 * stats.hp + 31 + (255/4)) * stats.level)/100) + stats.level + 10)
	atk.value = round(((((2 * stats.atk + 31 + (255/4)) * stats.level)/100) + 5) * stats.atk_nature_multiplier)
	def.value = round(((((2 * stats.def + 31 + (255/4)) * stats.level)/100) + 5) * stats.def_nature_multiplier)
	s_atk.value = round(((((2 * stats.s_atk + 31 + (255/4)) * stats.level)/100) + 5) * stats.s_atk_nature_multiplier)
	s_def.value = round(((((2 * stats.s_def + 31 + (255/4)) * stats.level)/100) + 5) * stats.s_def_nature_multiplier)
	spd.value = round(((((2 * stats	.spd + 31 + (255/4)) * stats.level)/100) + 5) * stats.spd_nature_multiplier)

