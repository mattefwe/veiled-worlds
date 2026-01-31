extends Button


func _on_pressed():
	
	#get_tree().change_scene_to_file("res://scenes/travel.tscn")
	# Replace with function body.
	SceneManager.transition_to_scene("res://cutscenes/travel.tscn")
