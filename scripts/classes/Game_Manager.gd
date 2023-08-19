extends Node
class_name GameManager


var grid_manager




func _init():
	
	grid_manager = GridManager.new()
	
	

	
	grid_manager.add_grid_display_to_global_game()
	grid_manager.set_up_display()
	
#	var node = get_parent()
#	var game = $Game
#	print(game)
#	$Game.add_child(grid_manager)




func update_game_manager(delta):
	grid_manager.update_grid_manager(delta)
