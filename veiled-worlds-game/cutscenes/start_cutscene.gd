extends Control

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	SceneManager.transition_to_scene("res://cutscenes/travel.tscn")


func _on_skip_button_pressed() -> void:
	animation_player.advance(animation_player.current_animation_length-7)
