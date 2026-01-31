extends VBoxContainer


var currentid = 0
var AtmAnswered = false
var GvtAnswered = false
var WtrAnswered = false
var TmpAnswered = false
var ResAnswered = false
var arrayquestions = []

func _ready():
	
	for i in range(count_questions(currentid, arrayquestions)):
		var label = Label.new()
		label.text = arrayquestions[i]
		add_child(label)

func _process(_delta):
	
	##cancello tutti i figli
	var children = get_children()
	for x in range(children.size()-1):
		children[x].queue_free()
	
	## conto e riinizializzo tutti i figli
	
func count_questions(id, arrayquestions):
	var alien = AlienList.aliens[id]
	var extradialogues = alien.extraDialogues
	arrayquestions.append("PlaceholderAtm")
	arrayquestions.append("PlaceholderGvt") 
	arrayquestions.append("PlaceholderWtr") 
	arrayquestions.append("PlaceholderTmp")
	arrayquestions.append("PlaceholderRes") 
	var count = 0
	for x in range(extradialogues.size()-1):
		if(extradialogues[x].prerequisite == "AtmAnswered" and AtmAnswered == true):
			count = count+1
			arrayquestions.append(extradialogues[x].question)
			
		if(extradialogues[x].prerequisite == "GvtAnswered" and GvtAnswered == true):
			count = count+1
			arrayquestions.append(extradialogues[x].question)
			
		if(extradialogues[x].prerequisite == "WtrAnswered" and WtrAnswered == true):
			count = count+1
			arrayquestions.append(extradialogues[x].question)
			
		if(extradialogues[x].prerequisite == "TmpAnswered" and TmpAnswered == true):
			count = count+1
			arrayquestions.append(extradialogues[x].question)
			
		if(extradialogues[x].prerequisite == "ResAnswered" and ResAnswered == true):
			count = count+1
			arrayquestions.append(extradialogues[x].question)
		
		
	return count
