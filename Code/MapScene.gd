extends Node2D

onready var fog = get_node("Player/CanvasLayer/Fog")
onready var tile_map = get_node("TileMap")

enum TerrainType {
	clear,
	grass,
	electric,
	fairy,
	psychic,
}

const terrain_colors = {
	"clear": Color("ffffff"),
	"grass": Color("7bce52"),
	"electric": Color("ffc631"),
	"fairy": Color("bd18ce"),
	"psychic": Color("ff73a5"),
}

func set_terrain(terrain_type):
	var terrain_color: Color
	match terrain_type:
		TerrainType.clear:
			terrain_color = terrain_colors.clear
		TerrainType.grass:
			terrain_color = terrain_colors.grass
		TerrainType.electric:
			terrain_color = terrain_colors.electric
		TerrainType.fairy:
			terrain_color = terrain_colors.fairy
		TerrainType.psychic:
			terrain_color = terrain_colors.psychic
	
	tile_map.material.set_shader_param("color", terrain_color)
	var fog_color := terrain_color.linear_interpolate(Color.white, 0.2)
	fog.material.set_shader_param("color", fog_color)
