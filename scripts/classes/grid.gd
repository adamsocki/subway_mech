extends Node
class_name Grid

var grid_size : Vector2
var places = []


 
func is_location_occupied(location_to_check: Vector2) -> bool:
	if places == null:
		return false
	else:
		for place in places:
			if place.grid_location == location_to_check:
				return true
	return false
	

func _init():
	grid_size.x = Global.grid_init_size.x
	grid_size.y = Global.grid_init_size.y
	
