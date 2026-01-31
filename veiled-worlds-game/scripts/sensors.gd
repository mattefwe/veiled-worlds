extends Control
var currentid = 0

func _ready():
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
