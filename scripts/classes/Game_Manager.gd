extends Node
class_name GameManager


var grid_manager


func update_game_manager(delta):
	grid_manager.update_grid_manager(delta)



func _init():
	grid_manager = GridManager.new()
