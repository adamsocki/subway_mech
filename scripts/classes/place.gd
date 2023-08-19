extends Node
class_name Place


var grid_location
var tot_pop
var place_name


func create_place_demographics():
	tot_pop = randi_range(100, 1000)

func create_name():
	place_name = "random_name"


func create_new_place():
	var create_place = true
	var location : Vector2
	
	while create_place:
		location.x = randi_range(0, Global.grid_init_size.x)
		location.y = randi_range(0, Global.grid_init_size.y)
		create_place = Global.game_data.grids[Global.game_data.current_grid].is_location_occupied(location)
	grid_location = location

func _init():
	create_new_place()
	create_place_demographics()
	create_name()
