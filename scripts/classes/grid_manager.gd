extends Node
class_name GridManager



func init_grid_manager():
	
	Global.game_data.grid = Grid.new()


func update_grid_manager(delta):
	pass



func _init():
	init_grid_manager()
