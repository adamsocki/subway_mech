extends Node
class_name GridManager



func init_grid_manager():
	for i in Global.places_to_init:
		Global.game_data.grid.places.append(Place.new())
	
	

func update_grid_manager(delta):
	pass



func _init():
	init_grid_manager()
