extends Node
class_name GameData

var grids = []

var current_grid = 0


func create_grid():
	grids.append(Grid.new())

func create_places(num_to_create: int):
	for i in num_to_create:
		grids[current_grid].places.append(Place.new())


func create_subways():
	for i in 1:
		grids[current_grid].subways.append(Subway.new())


func _init():
	pass
