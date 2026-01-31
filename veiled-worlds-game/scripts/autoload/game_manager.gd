extends Node

var arr_aliens_visited = []
var fuel = 5
var main_menu = preload("res://scenes/gui/main_menu.tscn")
var pause_menu = preload("res://scenes/gui/pause_menu.tscn")
var start_cutscene = preload("res://cutscenes/start_cutscene.tscn")
var game_scene = preload("res://scenes/dialogue_scene.tscn")
var game_running : bool = false


func _ready() -> void:
	RenderingServer.set_default_clear_color(Color(0, 0, 0, 1.00))


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("escape"):
		pause_game()


func start_game() -> void:
	resume_game()
	SceneManager.transition_to_scene(start_cutscene.resource_path)


func quit_game() -> void:
	get_tree().quit()


func pause_game() -> void:
	if game_running:
		game_running = false
		
		var pause_menu_instance = pause_menu.instantiate()
		get_tree().get_root().add_child(pause_menu_instance)


func resume_game() -> void:
	game_running = true


func load_main_menu() -> void:
	game_running = false
	SceneManager.transition_to_scene(main_menu.resource_path)


#func transition_to_scene(scene_path : String) -> void:
	#await get_tree().create_timer(0.5).timeout
	#get_tree().change_scene_to_file(scene_path)
