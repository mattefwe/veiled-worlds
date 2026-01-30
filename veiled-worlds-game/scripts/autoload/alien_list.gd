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
				"question" : "Text",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "GvtAnswered",
				"question" : "Text",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "WtrAnswered",
				"question" : "Text",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "TmpAnswered",
				"question" : "Text",
				"answer" : "Text"
			},
			{
				"id" : "N.M",
				"prerequisite" : "ResAnswered",
				"question" : "Text",
				"answer" : "Text"
			},
		]
	}
]
