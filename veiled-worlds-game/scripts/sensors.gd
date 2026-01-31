extends Control
var rng = RandomNumberGenerator.new()
var currentid
var num_civs = 14

func _ready():
	currentid = rng.randi_range(0, num_civs)
	while currentid in GameManager.arr_aliens_visited:
		if GameManager.arr_aliens_visited.size() == 12:
			break
		else:
			currentid = rng.randi_range(0, num_civs)
	GameManager.arr_aliens_visited.append(currentid)
	%AnsLabel.text = "[b][i][color=#a30812]"+"\n\n"+AlienList.aliens[currentid].name+"[/color], "+AlienList.aliens[currentid].planetName+"'s Representative:[/i][/b]\n\n[i]"+AlienList.aliens[currentid].initialSentence+"[/i]" + "\n\n"+"[hr]"+"\n\n" 
	print(GameManager.arr_aliens_visited)
	print(currentid)
	update()
		

func update():
	var atm = AlienList.aliens[currentid].atmosphere
	var grv = AlienList.aliens[currentid].gravity
	var wtr = AlienList.aliens[currentid].water
	var tmp = AlienList.aliens[currentid].temperature
	var res = AlienList.aliens[currentid].resources
	%Atmosphere.text = "Atmosphere: "+atm
	%Gravity.text = "Gravity: "+grv
	%Water.text = "Water: "+wtr
	%Temperature.text = "Temperature: "+tmp
	%Resources.text = "Resources: "+res
