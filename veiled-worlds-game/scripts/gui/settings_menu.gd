extends Control


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("escape"):
		GameManager.resume_game()
		queue_free()


func _on_back_button_pressed() -> void:
	SettingsManager.save_settings()
	queue_free()
