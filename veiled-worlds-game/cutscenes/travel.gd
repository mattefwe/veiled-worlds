extends Control

var travel_text : String

@onready var text_label: RichTextLabel = %RichTextLabel
@onready var animation_player: AnimationPlayer = %AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(GameManager.fuel)
	if (GameManager.fuel == 5):
		travel_text = "[b][color=#22705b][tornado radius=3.0 freq=2.0 connected=1]Sorrow[/tornado][/color][/b] fills your heart as you put your fellow survivors in [i][b][color=#1ee6df][wave amp=15.0 freq=5.0 connected=1]cryosleep[/wave][/color][/b][/i] before yourself.\n\nYour ship isn’t going to last long, and deep down you know you [b][i][color=#ff2921][shake rate=20.0 level=8 connected=1]can’t trust[/shake][/color][/i][/b] anyone you meet."
	elif (GameManager.fuel == 4):
		travel_text = "You feel confident in the ability of your ship to endure the long journey ahead of you.\n\nThere was no need to take any risks. Something about that alien just felt [shake rate=20.0 level=8 connected=1][b]off...[/b][/shake]"
	elif (GameManager.fuel == 3):
		travel_text = "The age of your ship is starting to show, and a feeling of solitude starts growing inside of you.\nBut watching all the cryogenized people you’re trying to save helps ignore that feeling.\n\nTheir lives are in your hands, [b][i][tornado radius=3.0 freq=2.0 connected=1]you can’t let go just now...[/tornado][/i][/b]"
	elif (GameManager.fuel == 2):
		travel_text = "You can’t avoid it. At this rate, all you did is going to be in vain.\n\nThe sense of [b][shake rate=20.0 level=5 connected=1]anguish[/shake][/b] is slowly taking over your mind.\n\nYou don’t know how long you can still keep going..."
	elif (GameManager.fuel == 1):
		travel_text = "The ship is surely not going to withstand another trip like this. This is your last chance...\n\nAre you going to take this [b][i][shake rate=20.0 level=5 connected=1]final risk?[/shake][/i][/b]\nOr are you just going to [b][i][wave amp=15.0 freq=5.0 connected=1]end it your way?[/wave][/i][/b]"
	elif (GameManager.fuel == 0):
		travel_text = "Youre all out of fuel... Even the cryogenized people on the ship are slowly dying.\n\nAfter all this enduring, you can finally let go.\n\n[b][i]It’s...[/i] [color=#a30812][tornado radius=3.0 freq=2.0 connected=1]over.[/tornado][/color][/b]"
	
	print(travel_text)
	%RichTextLabel.text = travel_text
	
	GameManager.fuel -= 1
	
	animation_player.play("travel_animation")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if GameManager.fuel >= 0:
		SceneManager.transition_to_scene("res://scenes/dialogue_scene.tscn")
	else:
		SceneManager.transition_to_scene("res://scenes/gui/main_menu.tscn")


func _on_skip_button_pressed() -> void:
	animation_player.advance(animation_player.current_animation_length-7)
