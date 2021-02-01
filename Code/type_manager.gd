extends Control

var type = [
	{"name": "Bug" ,"color": '#adbd21'},
	{"name": "Dark" ,"color": '#735a4a'},
	{"name": "Dragon" ,"color": "#7b63e7"},
	{"name": "Electric" ,"color": "#ffc631"},
	{"name": "Fairy" ,"color": "#f7b5f7"},
	{"name": "Fighting" ,"color": "#a55239"},
	{"name": "Fire" ,"color": "#f75231"},
	{"name": "Flying" ,"color": "#9cadf7"},
	{"name": "Ghost" ,"color": "#6363b5"},
	{"name": "Grass" ,"color": "#7bce52"},
	{"name": "Ground" ,"color": "#d6b55a"},
	{"name": "Ice" ,"color": "#5acee7"},
	{"name": "Normal" ,"color": "#ada594"},
	{"name": "Poison" ,"color": "#b55aa5"},
	{"name": "Psychic" ,"color": "#ff73a5"},
	{"name": "Rock" ,"color": "#bda55a"},
	{"name": "Steel" ,"color": "#adadc6"},
	{"name": "Water" ,"color": "#399cff"}
]

func typeColor(num):
	return num["color"]
func typeName(num):
	return num["name"]
