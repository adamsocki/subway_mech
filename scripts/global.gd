extends Node


var game
var game_manager
var game_data


@export var grid_init_size : Vector2
@export var places_to_init : int




# Called when the node enters the scene tree for the first time.
func _ready():
	game_data = GameData.new()
	game_data.init_game_data()
	game_manager = GameManager.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game_manager.update_game_manager(delta)
