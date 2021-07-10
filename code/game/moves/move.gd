class_name Move

static func get_move(data):
	var physical_moves = load("physical_move.gd")
	match data.name_id:
		"leech_life":
			pass
		"pin_missile":
			pass
		"string_shot":
			pass
		"twineedle":
			pass
		"fury_cutter":
			pass
		"megahorn":
			pass
		"spider_web":
			pass
		"signal_beam":
			pass
		"silver_wind":
			pass
		"tail_glow":
			pass
		"bug_bite":
			return physical_moves.PhysicalAttackMove.new(data)
		"bug_buzz":
			pass
		"attack_order":
			pass
		"defend_order":
			pass
		"heal_order":
			pass
		"u-turn":
			pass
		"x-scissor":
			pass
		"quiver_dance":
			pass
		"rage_powder":
			pass
		"steamroller":
			pass
		"struggle_bug":
			pass
		"fell_stinger":
			pass
		"infestation":
			pass
		"powder":
			pass
		"sticky_web":
			pass
		"first_impresion":
			pass
		"lunge":
			return physical_moves.PhysicalAttackMove.new(data)
		"pollen_puff":
			pass
		"skitter_smack":
			pass
