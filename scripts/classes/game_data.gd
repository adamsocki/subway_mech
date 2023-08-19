extends Node
class_name GameData

var grid


func create_grid():
	grid = Grid.new()

func create_places(num_to_create: int):
	for i in num_to_create:
		Global.game_data.grid.places.append(Place.new())


func _init():
	pass
