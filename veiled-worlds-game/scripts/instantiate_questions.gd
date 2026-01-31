extends VBoxContainer

var currentid = 0
var AtmAnswered = false
var GvtAnswered = false
var WtrAnswered = false
var TmpAnswered = false
var ResAnswered = false
var dictquestions = {}
var arrayquestions = []
var max_ans = AlienList.aliens[currentid].maxAnswers
var num_ans
var ans = "ciao"

func _ready():
	num_ans = 0
	count_questions(currentid, arrayquestions, dictquestions)
	##ans = AlienList.aliens[currentid].intro
	for i in range(arrayquestions.size()):
		var button = Button.new()
		button.text = arrayquestions[i]
		button.button_down.connect(_on_pressed.bind(dictquestions[arrayquestions[i]]))
		button.button_down.connect(_check.bind(i))
		add_child(button)
	

func _process(_delta):
	
	pass

func update():
	var arrayquestions = []
	var dictquestions = {}
	##cancello tutti i figli
	var children = get_children()
	for child in children:
		remove_child(child)
		child.queue_free()
	
	##conto e riinizializzo tutti i figli
	count_questions(currentid, arrayquestions, dictquestions)
	for i in range(arrayquestions.size()):
		var button = Button.new()
		button.text = arrayquestions[i]
		button.button_down.connect(_on_pressed.bind(dictquestions[arrayquestions[i]]))
		button.button_down.connect(_check.bind(i))
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
	for x in range(extradialogues.size()):
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


func _on_pressed(answer):
	if not num_ans == max_ans:
		#print(answer)
		print(num_ans)
		num_ans = num_ans + 1
		%AnsLabel.text = answer
		update()
	
func _check(index):
	if not num_ans == max_ans:
		if index == 0:
			AtmAnswered = true

		if index == 1:
			GvtAnswered = true

		if index == 2:
			WtrAnswered = true

		if index == 3:
			TmpAnswered = true

		if index == 4:
			ResAnswered = true

		update()


func _print_answer():
	return self.get_meta("answer_to_write")
