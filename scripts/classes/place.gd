extends Node
class_name Place


var grid_location

func init_new_place():
	print("1")
	var create_place = true
	var location : Vector2
	while create_place:
		location.x = randi_range(0, Global.grid_init_size.x)
		location.y = randi_range(0, Global.grid_init_size.y)
		print(Global.game_data.grid)
		create_place = Global.game_data.grid.is_location_occupied(location)
	grid_location = location

func _init():
	init_new_place()
