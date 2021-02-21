extends Node2D

export(String) var currentWeather = ""
export(String) var currentTerrain = ""

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
	fog.visible = true
	match terrain_type:
		TerrainType.clear:
			terrain_color = terrain_colors.clear
			fog.visible = false
			currentTerrain = "clear"
		TerrainType.grass:
			terrain_color = terrain_colors.grass
			currentTerrain = "grass"
		TerrainType.electric:
			terrain_color = terrain_colors.electric
			currentTerrain = "electric"
		TerrainType.fairy:
			terrain_color = terrain_colors.fairy
			currentTerrain = "fairy"
		TerrainType.psychic:
			terrain_color = terrain_colors.psychic
			currentTerrain = "psychic"
	print(currentTerrain)
	tile_map.material.set_shader_param("color", terrain_color)
	var fog_color := terrain_color.linear_interpolate(Color.white, 0.2)
	fog.material.set_shader_param("color", fog_color)
