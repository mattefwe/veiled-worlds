extends Node


func transition_to_scene(path : String) -> void:
	
	if path != null:
		FadeTransition.transition()
		await FadeTransition.on_transition_finished
		get_tree().change_scene_to_file(path)
		await get_tree().create_timer(0.05).timeout
