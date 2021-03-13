extends Control

onready var stats_stats = $Menu/BaseBox/Stats
onready var database_manager = get_node("/root/DatabaseManager")

export(String) var test_name = "sylveon"

func _ready():
	test_stat(test_name)

func update_stats(stats):
	#stat stats
	stats_stats.update_stats(stats)


func test_stat(name):
	var pokemon = database_manager.pokemon[name]
	update_stats({
		hp = pokemon.HP,
		atk = pokemon.Atk,
		def = pokemon.Def,
		s_atk = pokemon.SAtk,
		s_def = pokemon.SDef,
		spd = pokemon.Spd,
		atk_nature_multiplier = 1,
		def_nature_multiplier = 1,
		s_atk_nature_multiplier = 1,
		s_def_nature_multiplier = 1,
		spd_nature_multiplier = 1,
		level = 50,
	})
