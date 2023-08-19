extends Node
class_name Grid

var grid_size : Vector2
var places = []
var subways = []

var places_pop_sort = []


 
func is_location_occupied(location_to_check: Vector2) -> bool:
	if places == null:
		return false
	else:
		for place in places:
			if place.grid_location == location_to_check:
				return true
	return false


func sort_places_pop_high_to_low():
	places_pop_sort = places.duplicate()
	for i in range(places_pop_sort.size()):
		for j in range(i + 1, places_pop_sort.size()):
			if (places_pop_sort[i].tot_pop < places_pop_sort[j].tot_pop):
				var temp = places_pop_sort[i]
				places_pop_sort[i] = places_pop_sort[j]
				places_pop_sort[j] = temp
				
	for i in places_pop_sort.size():
		print(places_pop_sort[i].tot_pop)
#	for i in station_list.size():
#		print(station_list[i].nearby_population)

func _init():
	grid_size.x = Global.grid_init_size.x
	grid_size.y = Global.grid_init_size.y
	
