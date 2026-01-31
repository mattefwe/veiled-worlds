extends Control

var settings_menu = preload("res://scenes/gui/settings_menu.tscn")


func _on_start_button_pressed() -> void:
	GameManager.start_game()


func _on_options_button_pressed() -> void:
	var settings_menu_instance = settings_menu.instantiate()
	
	get_tree().get_root().add_child(settings_menu_instance)


func _on_quit_button_pressed() -> void:
	GameManager.quit_game()
