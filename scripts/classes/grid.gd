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
	

#func generate_new_place():
#	var create_place = true
#	var location : Vector2
#	while create_place:
#		location.x = randi_range(0, grid_size.x)
#		location.y = randi_range(0, grid_size.y)
#	var generated_place = Place.new(location)
#	places.append(generated_place)

#func init_places():
#	for i in Global.places_to_init:
#		Global.game_data.places.append(Place.new())


func _init():
	grid_size.x = Global.grid_init_size.x
	grid_size.y = Global.grid_init_size.y
	
	
#	init_places()
	
	
