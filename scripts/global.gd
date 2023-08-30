extends Node
# GLOBAL.GD

var game
var game_ui
var game_manager
var game_data
var grid_display

@export var grid_init_size : Vector2
@export var places_to_init : int


@export var root : Node






# Called when the node enters the scene tree for the first time.
func _ready():
	game = load("res://scenes/game.tscn").instantiate()
	add_child(game)
	game_ui = load("res://scenes/ui.tscn").instantiate()
	add_child(game_ui)
	grid_display = load("res://scenes/grid_display.tscn").instantiate()
	add_child(grid_display)
	
	
	game_data = GameData.new()
	game_data.create_grid()
	game_data.create_places(Global.places_to_init)
	game_data.create_subways()
	
	
#	for i in game_data.grids[game_data.current_grid].subways:
#		for j in i.places_along_subway:
#			print(j["place"].place_name)
			
	
	
	
	game_manager = GameManager.new()
	
	
#	game = load("res://scenes/game.tscn")
#	game.intantiate()
#	add_child(game)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game_manager.update_game_manager(delta)
