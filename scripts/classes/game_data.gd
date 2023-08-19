extends Node
class_name GameData

var grid


func create_grid():
	grid = Grid.new()

func create_places(num_to_create: int):
	for i in num_to_create:
		grid.places.append(Place.new())


func create_subways():
	for i in 1:
		grid.subways.append(Subway.new())


func _init():
	pass
