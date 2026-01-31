extends Control

var settings_menu = preload("res://scenes/gui/settings_menu.tscn")


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("escape"):
		GameManager.resume_game()
		queue_free()


func _on_resume_button_pressed() -> void:
	GameManager.resume_game()
	queue_free()


func _on_options_button_pressed() -> void:
	var settings_menu_instance = settings_menu.instantiate()
	
	get_tree().get_root().add_child(settings_menu_instance)


func _on_menu_button_pressed() -> void:
	GameManager.load_main_menu()
	queue_free()
