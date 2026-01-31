extends Node


var main_menu = preload("res://scenes/main_menu.tscn")
var game_running : bool = false


func _ready() -> void:
	RenderingServer.set_default_clear_color(Color(0.44, 0.12, 0.53, 1.00))
	
	SettingsManager.load_settings()


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("escape"):
		pause_game()


func start_game() -> void:
	resume_game()
	game_running = true
	SceneManager.transition_to_scene("Level1")


func quit_game() -> void:
	get_tree().quit()


func pause_game() -> void:
	if game_running:
		get_tree().paused = true
	
		var pause_menu_instance = pause_menu.instantiate()
		get_tree().get_root().add_child(pause_menu_instance)


func resume_game() -> void:
	get_tree().paused = false


func load_main_menu() -> void:
	game_running = false
	transition_to_scene(main_menu.resource_path)


func transition_to_scene(scene_path : String) -> void:
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file(scene_path)
