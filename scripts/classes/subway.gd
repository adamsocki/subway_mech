extends Node
class_name Subway




func create_new_subway():
	Global.game_data.grid.sort_places_pop_high_to_low()
	# find top 5 pop places
	# find two from top 5 that are furthest from one another
	# create initial segment




func _init():
	create_new_subway()
