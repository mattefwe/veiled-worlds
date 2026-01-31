extends VBoxContainer


var currentid = 0
var AtmAnswered = false
var GvtAnswered = false
var WtrAnswered = false
var TmpAnswered = false
var ResAnswered = false
var dictquestions = {}
var arrayquestions = []

func _ready():
	count_questions(currentid, arrayquestions, dictquestions)
	for i in range(arrayquestions.size()):
		var button = Button.new()
		button.text = arrayquestions[i]
		add_child(button)
	

func _process(_delta):
	
	pass

func update():
	
	##cancello tutti i figli
	var children = get_children()
	for x in range(children.size()-1):
		children[x].queue_free()
	
	##conto e riinizializzo tutti i figli
	count_questions(currentid, arrayquestions, dictquestions)
	for i in range(arrayquestions.size()):
		var button = Button.new()
		button.text = arrayquestions[i]
		add_child(button)
	

func count_questions(id, arrayquestions, dictquestions):
	var alien = AlienList.aliens[id]
	var extradialogues = alien.extraDialogues
	arrayquestions.append("PlaceholderAtm")
	arrayquestions.append("PlaceholderGvt")
	arrayquestions.append("PlaceholderWtr")
	arrayquestions.append("PlaceholderTmp")
	arrayquestions.append("PlaceholderRes")
	dictquestions["PlaceholderAtm"] = "PlaceholderAnsAtm"
	dictquestions["PlaceholderGvt"] = "PlaceholderAnsGvt"
	dictquestions["PlaceholderWtr"] = "PlaceholderAnsWtr"
	dictquestions["PlaceholderTmp"] = "PlaceholderAnsTmp"
	dictquestions["PlaceholderRes"] = "PlaceholderAnsRes"

	var count = 0
	for x in range(extradialogues.size()-1):
		if(extradialogues[x].prerequisite == "AtmAnswered" and AtmAnswered == true):
			count = count+1
			dictquestions[extradialogues[x].question] = extradialogues[x].answer
			arrayquestions.append(extradialogues[x].question)
			
		if(extradialogues[x].prerequisite == "GvtAnswered" and GvtAnswered == true):
			count = count+1
			dictquestions[extradialogues[x].question] = extradialogues[x].answer
			arrayquestions.append(extradialogues[x].question)
			
		if(extradialogues[x].prerequisite == "WtrAnswered" and WtrAnswered == true):
			count = count+1
			dictquestions[extradialogues[x].question] = extradialogues[x].answer
			arrayquestions.append(extradialogues[x].question)
			
		if(extradialogues[x].prerequisite == "TmpAnswered" and TmpAnswered == true):
			count = count+1
			dictquestions[extradialogues[x].question] = extradialogues[x].answer
			arrayquestions.append(extradialogues[x].question)
			
		if(extradialogues[x].prerequisite == "ResAnswered" and ResAnswered == true):
			count = count+1
			dictquestions[extradialogues[x].question] = extradialogues[x].answer
			arrayquestions.append(extradialogues[x].question)
		
	return count
