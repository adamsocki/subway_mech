extends Node
class_name Grid

var grid_size : Vector2
var places = []

var occupied_locations = []

 
func is_location_occupied(location_to_check: Vector2) -> bool:
	if occupied_locations == null:
		return false
	else:
		for location in occupied_locations:
			if location == location_to_check:
				return true
	return false
	

func generate_new_place() -> Place:
	var create_place = true
	var location : Vector2
	while create_place:
		location.x = randi_range(0, grid_size.x)
		location.y = randi_range(0, grid_size.y)
		create_place = is_location_occupied(location)
	occupied_locations.append(location)
	var generated_place = Place.new(location)
	return generated_place

func init_places():
	print("2")
	print(Global.places_to_init)
	for i in Global.places_to_init:
		print("1")
		
		places.append(generate_new_place())
		print(places[i].grid_location)



func _init():
	grid_size.x = Global.grid_init_size.x
	grid_size.y = Global.grid_init_size.y
	init_places()
	
	
