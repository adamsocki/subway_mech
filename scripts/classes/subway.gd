extends Node
class_name Subway

var places_along_subway = []



func create_new_subway():
	

	Global.game_data.grids[Global.game_data.current_grid].sort_places_pop_high_to_low()
	# find top 5 pop places
	var temp = Global.game_data.grids[Global.game_data.current_grid].get_places_pop_sort()
	# find two from top 5 that are furthest from one another
	var pop_pair
	var greatest_distance = 0
	var greatest_pair = null
	var count = 0
	for i in 5:
		for j in 5:
			if i != j:
				var current_vector = temp[i].grid_location
				var next_vector = temp[j].grid_location
#
				var distance = current_vector.distance_to(next_vector)
#
				if distance > greatest_distance:
					greatest_distance = distance
					greatest_pair = [temp[i], temp[j]]
				count += 1
	
	pop_pair = greatest_pair.duplicate()
	
	var station_1 = {
		"seq": 0,
		"place": greatest_pair[0]
	}
	places_along_subway.append(station_1)
	
	var station_2 = {
		"seq": 1,
		"place": greatest_pair[1]
	}
	places_along_subway.append(station_2)
	

func _init():
	create_new_subway()
