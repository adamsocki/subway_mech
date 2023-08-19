extends Node


var game
var game_manager
var game_data


@export var grid_init_size : Vector2
@export var places_to_init : int







# Called when the node enters the scene tree for the first time.
func _ready():
	game_data = GameData.new()
	game_data.create_grid()
	game_data.create_places(Global.places_to_init)
	game_data.create_subways()
	
	
	for i in game_data.grids[game_data.current_grid].subways:
		for j in i.places_along_subway:
			print(j["place"].place_name)
			
	
	game_manager = GameManager.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game_manager.update_game_manager(delta)
