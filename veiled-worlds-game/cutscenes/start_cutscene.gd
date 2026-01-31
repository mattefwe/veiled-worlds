extends Control



func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	SceneManager.transition_to_scene("res://scenes/dialogue_scene.tscn")
