extends Node
class_name GridManager


var grid_display

var game


func add_grid_display_to_global_game():
	grid_display = load("res://scenes/grid_display.tscn").instantiate()
	Global.game.add_child(grid_display)


func init_grid_manager():
	pass
#	init_grid_display()
	
	

func update_grid_manager(delta):
	pass
	
	




func _init():
	pass
