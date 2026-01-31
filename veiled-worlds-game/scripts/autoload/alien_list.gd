extends Node

var aliens =[
	{
		"id" : "N",
		"picture" : "Path",
		"name" : "Name",
		"hostile" : "Boolean",
		
		"planetName" : "PlanetName",
		
		"atmosphere" : "Value",
		"gravity" : "Value",
		"water" : "Value",
		"temperature" : "Value",
		"resources" : "Value",
		 
		"ansAtm" : "Text",
		"ansGvt" : "Text",
		"ansWtr" : "Text",
		"ansTmp" : "Text",
		"ansRes" : "Text",
		
		"maxAnswers" : "Int",
		
		"extraDialogues" : [
			{
				"id" : "N.M",
				"prerequisite" : "AtmAnswered",
				"question" : "TextAns",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "AtmAnswered",
				"question" : "TextGvt",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "WtrAnswered",
				"question" : "TextWtr",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "TmpAnswered",
				"question" : "TextTmp",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "ResAnswered",
				"question" : "TextRes",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "ResAnswered",
				"question" : "TextRes2",
				"answer" : "Text"
			},
		]
	}
]
