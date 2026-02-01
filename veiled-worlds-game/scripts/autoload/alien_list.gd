extends Node

var aliens =[
	{
		"id" : "1",
		"picture" : "res://assets/images/zyrrac.png",
		"background" : null,
		"name" : "Zyrrak",
		"hostile" : "true",
		"initialSentence" : "Every step you take here weighs twice as much. Why have you come?",
		
		"planetName" : "Korth-9",
		
		"atmosphere" : "dense",
		"gravity" : "very high",
		"water" : "scarce",
		"temperature" : "-20°C",
		"resources" : "high",
		 
		"ansAtm" : "My planet's atmosphere is medium to dense.",
		"ansGvt" : "Our gravity doesn't affect humans like you too much.",
		"ansWtr" : "Our planet lacks water but there is enough for all.",
		"ansTmp" : "The temperature can be a little cold but it's tolerable.",
		"ansRes" : "We have a lot of resources to share.",
		
		"maxAnswers" : "4",
		
		"extraDialogues" : [
			{
				"id" : "1.1",
				"prerequisite" : "AtmAnswered",
				"question" : "Is the air respirable for us humans?",
				"answer" : "You may have some troubles, but nothing to be concerned."
			}
		],
		"epilogue" : "When you land, the people of Korth-9 greets you happily, at first. 
		Day after day you and the other humans start to feel a little dizzy due to the atmosphere and you realize 
		that the aliens fooled you about the planet. Survivors: None "
	},
	{
		"id" : "2",
		"picture" : "res://assets/images/aelith.png",
		"background" : null,
		"name" : "Aelith",
		"hostile" : "false",
		"initialSentence" : "Lunarys does not reject guests...if they bring peace",
		
		"planetName" : "Lunarys",
		
		"atmosphere" : "oxygen-rich",
		"gravity" : "low",
		"water" : "abundant",
		"temperature" : "20°C",
		"resources" : "medium",
		 
		"ansAtm" : "The atmosphere has lots of oxygen.",
		"ansGvt" : "Our gravity is slightly less than Earth's, but very similar.",
		"ansWtr" : "Our planet has a lot of water on its surface.",
		"ansTmp" : "The climate is Earth-like with a temperature of about 20°C.",
		"ansRes" : "We have more than enough resources to offer.",
		
		"maxAnswers" : "4",
		
		"extraDialogues" : [
			{
				"id" : "2.1",
				"prerequisite" : "WtrAnswered",
				"question" : "We can't live underwater, is there any piece of land where we can settle?",
				"answer" : "Yes, if you want to stay, we can find some place for you."
			}
		],
		"epilogue" : "You manage to land on a little island surrounded by water, then you live happily with the
		population of Lunarys for many years. After the initial suspicion, both humans and aliens begin to share 
		their cultures with each other. The two populations merge into one new race to create a new poulation of Lunarys.
		Survivors: All and managed to create a new population."
	},
	{
		"id" : "3",
		"picture" : "res://assets/images/drogg.png",
		"background" : null,
		"name" : "Drogg",
		"hostile" : "true",
		"initialSentence" : "Only those who build faster survive here.",
		
		"planetName" : "Brak-Thor",
		
		"atmosphere" : "toxic",
		"gravity" : "extreme",
		"water" : "almost none",
		"temperature" : "60°C",
		"resources" : "very high",
		 
		"ansAtm" : "Our atmosphere doesn't have much oxygen.",
		"ansGvt" : "Gravity seems fine to us.",
		"ansWtr" : "There isn't much water on our planet.",
		"ansTmp" : "It's very hot here.",
		"ansRes" : "It's none of your business.",
		
		"maxAnswers" : "5",
		
		"extraDialogues" : [
			{
				"id" : "3.1",
				"prerequisite" : "AtmAnswered",
				"question" : "What is the air like?",
				"answer" : "I already told you, we don't have much oxygen so it will hopefully
				kill you, once you've landed."
			},
			{
				"id" : "3.2",
				"prerequisite" : "TmpAnswered",
				"question" : "If you were to say on a scale from 1 to 10, how much is hot?",
				"answer" : "I'd say 4 out of 10."
			}
		],
		"epilogue" : "I don't know why you would trust such a horrible and rude population. Thanks to
		the high temperature your engine dies but you manage to land by luck. When the humans get off the
		spaceship, all of them start coughing due to the toxic atmosphere, you feel your throat burning 
		and some time later all of you fall to the ground lifeless. Survivors: None, idiot."
	},
	{
		"id" : "4",
		"picture" : "res://assets/images/nimrae.png",
		"background" : null,
		"name" : "Nim'rae",
		"hostile" : "true",
		"initialSentence" : "Your future has already passed before me.",
		
		"planetName" : "Elyon",
		
		"atmosphere" : "ionized",
		"gravity" : "similar to Earth's",
		"water" : "medium",
		"temperature" : "from -5°C to 30°C",
		"resources" : "high",
		 
		"ansAtm" : "Atmosphere is ok and it contains lots of oxygen.",
		"ansGvt" : "You won't feel any difference with your usual gravity.",
		"ansWtr" : "We have enough water for everyone.",
		"ansTmp" : "Here on Elyon, the temperature is sometimes below 0°C and sometimes over 0°C.",
		"ansRes" : "We don't want to share our resources with you.",
		
		"maxAnswers" : "3",
		
		"extraDialogues" : [
			{
				"id" : "4.1",
				"prerequisite" : "ResAnswered",
				"question" : "What if we find resources on our own?",
				"answer" : "Then it's ok, you can use resources...if you can find them."
			}
		],
		"epilogue" : "Even if the population of Elyon doesn't seem so friendly, you decide to land.
		The first few days you and the others live happily but then the locals start acting a little weird and you
		notice that many people are disappearing. You gather many survivors and go away from those natives as far
		as you can. Luckily you manage to save yourself and some other humans. Survivors: 40% of humans."
	},
	{
		"id" : "5",
		"picture" : "res://assets/images/khaluun.png",
		"background" : null,
		"name" : "Khaluun",
		"hostile" : "true",
		"initialSentence" : "Every creature here can heal... or kill.",
		
		"planetName" : "Syr-Vaal",
		
		"atmosphere" : "humid",
		"gravity" : "slightly less than Earth's",
		"water" : "medium",
		"temperature" : "40°C",
		"resources" : "medium",
		 
		"ansAtm" : "Atmosphere isn't so bad after you get used to it.",
		"ansGvt" : "It isn't so high.",
		"ansWtr" : "Our planet has a lot of water.",
		"ansTmp" : "The temperature is not so hot.",
		"ansRes" : "We struggle a bit finding resources but we don't complain about it.",
		
		"maxAnswers" : "5",
		
		"extraDialogues" : [
			{
				"id" : "5.1",
				"prerequisite" : "TmpAnswered",
				"question" : "How hot can it be?",
				"answer" : "It can reach about 30°C."
			},
			{
				"id" : "5.2",
				"prerequisite" : "ResAnswered",
				"question" : "Why do you struggle so much to find resources?",
				"answer" : "Since there is a lot of water, sometimes it's hard to go under the surface to mine."
			}
		],
		"epilogue" : "Your landing turns the mood upside down. The natives begin to be hostile and you have the feeling
		of being watched all the time. One day while you and the other men are out in some caves to get resources,
		you hear a strange noise at the entrance of the cave, you quickly run to see what happened and you find out that
		that you have been trapped inside the cave with a lot of poisonous spores. Women noticed that men aren't coming back, 
		they start to be suspicious, so they pick their children and go away trying to save the rest of humanity. 
		Survivors: All women and children. "
	},
	{
		"id" : "6",
		"picture" : "res://assets/images/lumae.png",
		"background" : null,
		"name" : "Lumae",
		"hostile" : "true",
		"initialSentence" : "Listen to the light, not the words.",
		
		"planetName" : "Iriel",
		
		"atmosphere" : "light",
		"gravity" : "very low",
		"water" : "low",
		"temperature" : "-40°C",
		"resources" : "low",
		 
		"ansAtm" : "It is a light atmosphere.",
		"ansGvt" : "Gravity is quite low.",
		"ansWtr" : "Our planet has so much water.",
		"ansTmp" : "It is chilly but tolerable.",
		"ansRes" : "We can give you all the resources you need.",
		
		"maxAnswers" : "3",
		
		"extraDialogues" : [
			{
				"id" : "6.1",
				"prerequisite" : "TmpAnswered",
				"question" : "Are we going to be able to heat us up?",
				"answer" : "Yes, we have a special formula to warm us up."
			}
		],
		"epilogue" : "Although your sensor showed an unwelcoming environment with a very low temperature,
		you decide to land anyways. You struggle a lot the first days, but then you see that every native has
		no problems with the temperature. You try to find out how they manage to live so easily, after asking
		to some people you learn that the natives eating some specific animals, they manage to keep warm themselves.
		You return happily and very excited to your people with the news. The more humans ate animals, the more they
		felt nauseous until all humans lose their life. Survivors: None."
	},
	{
		"id" : "7",
		"picture" : "res://assets/images/krynn.png",
		"background" : null,
		"name" : "Krynn",
		"hostile" : "true",
		"initialSentence" : "The sun taught us to master energy.",
		
		"planetName" : "Helior",
		
		"atmosphere" : "radioactive",
		"gravity" : "similar to Earth's",
		"water" : "scarce",
		"temperature" : "70°C",
		"resources" : "very high",
		 
		"ansAtm" : "Atmosphere is fine and you will love it.",
		"ansGvt" : "Our gravity will make you feel like home.",
		"ansWtr" : "We don't have so much water.",
		"ansTmp" : "On this planet you may suffer from the heat but not so much.",
		"ansRes" : "Honestly, we have lots of resources.",
		
		"maxAnswers" : "4",
		
		"extraDialogues" : [
			{
				"id" : "7.1",
				"prerequisite" : "AtmAnswered",
				"question" : "Is there any oxygen in your atmosphere?",
				"answer" : "Yes, there is plenty."
			},
			{
				"id" : "7.2",
				"prerequisite" : "TmpAnswered",
				"question" : "How hot is your planet?",
				"answer" : "As I told you before, it's a little hot but you can live easily."
			}
		],
		"epilogue" : "You decide to trust Krynn so you land on Helior. As soon as you put a foot on the surface of the planet,
		you and the others get intoxicated by the atmosphere more and more every day. Since your landing, after some days
		the natives decide to attack the humans, because they want to eat you all and because they are all infected and weak.
		The natives were caught by surprise during the attack because the toxic atmosphere transformed every human in monsters,
		some with more arms and others with more legs, by the end of the battle the mutants won and they can now live on that planet.
		Survivors: All...but can you really call it a good and happy life?"
	},
	{
		"id" : "8",
		"picture" : "res://assets/images/eryss.png",
		"background" : null,
		"name" : "Eryss",
		"hostile" : "false",
		"initialSentence" : "The ocean already know who you are.",
		
		"planetName" : "Aqualon",
		
		"atmosphere" : "humid",
		"gravity" : "low",
		"water" : "very abundant",
		"temperature" : "15°C",
		"resources" : "medium",
		 
		"ansAtm" : "Our atmosphere is mainly humid due to lots of rains.",
		"ansGvt" : "The gravity is quite low.",
		"ansWtr" : "We have an abundance of water.",
		"ansTmp" : "The climate is moderate, not too hot.",
		"ansRes" : "There are some resources that can be found easily.",
		
		"maxAnswers" : "5",
		
		"extraDialogues" : [
			{
				"id" : "8.1",
				"prerequisite" : "GvtAnswered",
				"question" : "Why is the gravity low?",
				"answer" : "I don't really know, but I suppose it's because ours is a little planet."
			},
			{
				"id" : "8.2",
				"prerequisite" : "ResAnswered",
				"question" : "Why is it easy to find resources?",
				"answer" : "It's easy because they are on the islands and there aren't many islands 
				in this planet."
			}
		],
		"epilogue" : "You are amazed by the quantity of water of this planet, so you decide to land here.
		At first the natives weren't sure if they can trust you or not, but with the days passing by both 
		populations began to know each other more and more until finally two people became one. 
		Not because one had conquered the other, but because they chose to share a destiny.
		Survivors: All"
	},
	{
		"id" : "9",
		"picture" : "res://assets/images/saelith.png",
		"background" : null,
		"name" : "Saelith",
		"hostile" : "true",
		"initialSentence" : "Every sound dies here. Even lies.",
		
		"planetName" : "Cryndor",
		
		"atmosphere" : "nitrogen-rich",
		"gravity" : "similar to Earth's",
		"water" : "high",
		"temperature" : "-80°C",
		"resources" : "medium",
		 
		"ansAtm" : "It's similar to the Earth one, but it has more oxygen.",
		"ansGvt" : "Once you land you will notice that our gravity is no different from yours.",
		"ansWtr" : "We have lots of seas, lakes and rivers.",
		"ansTmp" : "Maybe it's a little cold for you but you'll get used to it.",
		"ansRes" : "You will be able to access our most precious moon resources.",
		
		"maxAnswers" : "4",
		
		"extraDialogues" : [
			{
				"id" : "9.1",
				"prerequisite" : "AtmAnswered",
				"question" : "How much nitrogen is there in the atmosphere?",
				"answer" : "We managed to replace a lot of nitrogen with oxygen."
			},
			{
				"id" : "9.2",
				"prerequisite" : "ResAnswered",
				"question" : "What do you mean by 'moon' resources?",
				"answer" : "I mean actual moon pieces that fall on our planet from time to time,
				which we use to make utensils, because they lasts longer."
			}
		],
		"epilogue" : "You arrived on that planet believing you had found salvation. The aliens tricked you
		giving the image of a beautiful planet, but when the ship touched the ground, the cold told a different
		truth. The first weeks were a struggle against the temperature and against the suspicion that grew with each 
		passing day. The war did not erupt in a single moment; humans lost cities barely built, aliens
		lost territories. No one emerged victorious, both learned how fragile they were.
		From that day on, the planet remained cold, but between humans and aliens, it was not.
		Survivors: A few."
	},
	{
		"id" : "10",
		"picture" : "res://assets/images/kael.png",
		"background" : null,
		"name" : "Kael",
		"hostile" : "true",
		"initialSentence" : "You breathe fast, little traveler. Aethyron does not forgive weakness.",
		
		"planetName" : "Aethyron",
		
		"atmosphere" : "methane-rich",
		"gravity" : "very high",
		"water" : "medium",
		"temperature" : "about -20°C",
		"resources" : "very high",
		 
		"ansAtm" : "It's perfect for humans like you, plenty of oxygen to breathe.",
		"ansGvt" : "Kind of normal gravity, you shouldn't be have any problems with it.",
		"ansWtr" : "There isn't much water on my planet, unfortunately.",
		"ansTmp" : "A little cold but nothing to be concerned about.",
		"ansRes" : "We have many resources to use.",
		
		"maxAnswers" : "4",
		
		"extraDialogues" : [
			{
				"id" : "10.1",
				"prerequisite" : "AtmAnswered",
				"question" : "Why does it look like that the planet has a dark atmosphere?",
				"answer" : "Don't worry, it's just the color of planet which reflect on the atmosphere."
			},
			{
				"id" : "10.2",
				"prerequisite" : "WtrAnswered",
				"question" : "What state is the water in?",
				"answer" : "It's mainly in solid state due to the cold."
			}
		],
		"epilogue" : "As soon as you land, some were swept by euphoria. Finaly they were on a new world, 
		but soon reality crept into their dreams: the air was unbreathable, every breath without a mask meant instant death.
		They instantly realized that they have been tricked into landing on that horrible planet.
		While the time flowed, everyone understood that there was no future for them.
		Survivors: None."
	},
	{
		"id" : "11",
		"picture" : "res://assets/images/numae.png",
		"background" : null,
		"name" : "Num'ae",
		"hostile" : "false",
		"initialSentence" : "The ocean hears your voice before I do.",
		
		"planetName" : "Neréa",
		
		"atmosphere" : "oxygen-rich",
		"gravity" : "low",
		"water" : "very high",
		"temperature" : "25°C",
		"resources" : "high",
		 
		"ansAtm" : "There are a lot of trees which raised the level of oxygen in the atmosphere.",
		"ansGvt" : "Our low gravity let trees grow a lot more higher than the Earth's trees.",
		"ansWtr" : "We don't have only trees but a lot of water too, with many seas.",
		"ansTmp" : "The climate is moderately hot.",
		"ansRes" : "Our planet can offer high quantity of resources and thanks to the large amount
		of water, it's easier to farm.",
		
		"maxAnswers" : "5",
		
		"extraDialogues" : [
			{
				"id" : "11.1",
				"prerequisite" : "AtmAnswered",
				"question" : "You seem to be very connected to the nature. Why is that?",
				"answer" : "We believe that water and nature are the hidden force that connects everything and everyone."
			}
		],
		"epilogue" : "Finally the humans had found their place alongside the natives:
		wise and peaceful beings who knew the secrets of the seas and the riverine forests.
		There was no longer any rush to conquer or reshape. Every village, every floating city had become a mosaic of cultures,
		houses built among reeds and mangroves, schools where languages intertwined, markets where earthly
		and local foods met. Humans learned to respect the slow rythm of the tides, to communicate with aquatic creatures and
		to honor the traditions of the natives. Survivors: All."
	},
	{
		"id" : "12",
		"picture" : "res://assets/images/grulktan.png",
		"background" : null,
		"name" : "Grulk-Tan",
		"hostile" : "true",
		"initialSentence" : "Survive this planet, then we talk.",
		
		"planetName" : "Khar-Mol",
		
		"atmosphere" : "dense",
		"gravity" : "very high",
		"water" : "very low",
		"temperature" : "extreme",
		"resources" : "very high",
		 
		"ansAtm" : "The atmosphere may not seem good, but it's not true.",
		"ansGvt" : "It's not very high, you can live on this planet effortlessly.",
		"ansWtr" : "We don't have much water, but you must be strong enough to survive either way.",
		"ansTmp" : "Our temperature won't bother you, because it's warm during the day and chilly during the night.",
		"ansRes" : "We are very good in smithing, because our planet is full of resources.",
		
		"maxAnswers" : "4",
		
		"extraDialogues" : [
			{
				"id" : "12.1",
				"prerequisite" : "AtmAnswered",
				"question" : "Why is the atmosphere good for you?",
				"answer" : "Because it has lot of oxygen and some other gasses that give that bad look to the
				atmosphere, but those gasses aren't harmful to humans."
			},
			{
				"id" : "12.2",
				"prerequisite" : "ResAnswered",
				"question" : "Where does your skill in smithing come from?",
				"answer" : "Since our planet is full of resources, we can train and smith every kind of utensils."
			}
		],
		"epilogue" : "When the ships touched down, the planet finally revealed its true face.
		Temperatures shifted without warning: cold that stole the breath, heat that burned the skin.
		Water, once promised in abundance, had become a relic to be sought and defended.
		The natives who had welcomed them with smiles and false maps, now watched from afar.
		In time, anger gave way to awareness. Some died. Others changed. They learned to read the signs
		of the wind, to dig where stone trapped moisture. There was no alliance, no true peace, only a tense balance, 
		built on mutual distrust. Survivors: 25%."
	},
	{
		"id" : "13",
		"picture" : "res://assets/images/eshra.png",
		"background" : null,
		"name" : "Esh'ra",
		"hostile" : "true",
		"initialSentence" : "Your thoughts are loud. Silence them.",
		
		"planetName" : "Velyss",
		
		"atmosphere" : "rarefied",
		"gravity" : "medium",
		"water" : "high",
		"temperature" : "10°C",
		"resources" : "very high",
		 
		"ansAtm" : "Our atmosphere may be rarefied but don't worry it contains lots of oxygen and psychic energy.",
		"ansGvt" : "The gravity on our planet will make you think that you are still on Earth.",
		"ansWtr" : "There's plenty of water, both in the surface, such as seas and lakes, and in the underground.",
		"ansTmp" : "It's not hot but not fresh too.",
		"ansRes" : "Thanks to the psychic energy in the atmosphere and the resources we have, 
		the average intelligence grew.",
		
		"maxAnswers" : "5",
		
		"extraDialogues" : [
			{
				"id" : "13.1",
				"prerequisite" : "AtmAnswered",
				"question" : "What is the psychic energy?",
				"answer" : "It's a kind of energy which permeates our planet, at first it messes your head,
				causing confusion but once you get used to it, it can help you grow your brain."
			},
			{
				"id" : "13.2",
				"prerequisite" : "ResAnswered",
				"question" : "Are you able to read our...",
				"answer" : "minds? Yes, we are."
			}
		],
		"epilogue" : "At first, they called that world a possibility. A planet of water and mist, 
		where the thin atmosphere made the sky pale and every breath short, but not impossible.
		When the humans realized the truth, it was already too late. The currents had scattered them, 
		supplies were lost, ships rendered useless. The natives knew the ocean and the thin air; 
		they knew where to live, when to move, who could survive. The humans did not.
		The years carved deeper than hunger. Oxygen masks became chains, the omnipresent water a liquid prison. 
		They labored in the natives’ floating cities, in submerged construction sites, in low towers where the air was barely enough. 
		Their knowledge was exploited, their bodies forcibly adapted to a world that did not want them.
		Survivors: All...but none of them is free."
	},
	{
		"id" : "14",
		"picture" : "res://assets/images/pokk9.png",
		"background" : null,
		"name" : "Pokk-9",
		"hostile" : "false",
		"initialSentence" : "Nothing is useless. Not even you.",
		
		"planetName" : "Scrap-0",
		
		"atmosphere" : "toxic",
		"gravity" : "medium",
		"water" : "low",
		"temperature" : "35°C",
		"resources" : "medium",
		 
		"ansAtm" : "The toxicity in our atmosphere didn't kill us, but changed us all in the inside.",
		"ansGvt" : "That's pretty much the same as the Earth's",
		"ansWtr" : "Our planet lacks water, but it's not completely absent.",
		"ansTmp" : "It may be a little hot but tolerable after a while.",
		"ansRes" : "We live easily with the resources that the planet gives us.",
		
		"maxAnswers" : "4",
		
		"extraDialogues" : [
			{
				"id" : "14.1",
				"prerequisite" : "AtmAnswered",
				"question" : "What caused the toxicity in the atmosphere?",
				"answer" : "We think that someone in the past didn't treat well this planet."
			},
			{
				"id" : "14.2",
				"prerequisite" : "WtrAnswered",
				"question" : "Where do you find water?",
				"answer" : "We usually find it in some small lake in the underground or in some cave."
			}
		],
		"epilogue" : "The planet had never stopped trying to kill them. 
		The toxic atmosphere corroded lungs and filters alike, and the constant, 
		overly high temperature turned every movement into an exhausting effort. At first, the humans 
		tried to endure on their own, sealed inside their suits and modules, convinced that technology 
		could bend even such a hostile world. Over time, shared settlements emerged, where human domes 
		intertwined with the natives’ organic structures. They had changed. They had learned that even 
		on the deadliest worlds, cooperation can make room for life—not by conquering the environment, 
		but by sharing its burden. Survivors: 75%. "
	},
	{
		"id" : "15",
		"picture" : "res://assets/images/threxilvon.png",
		"background" : null,
		"name" : "Threxil-Von",
		"hostile" : "false",
		"initialSentence" : "You are early... or late. It depends.",
		
		"planetName" : "Ossyra Prime",
		
		"atmosphere" : "oxygen-rich",
		"gravity" : "medium to high",
		"water" : "medium",
		"temperature" : "15°C",
		"resources" : "very high",
		 
		"ansAtm" : "Very similar to the Earth, we have lots of oxygen.",
		"ansGvt" : "It won't be easy for you moving the first days on our planet but you'll get used to it.",
		"ansWtr" : "There are some medium-size seas around the planet.",
		"ansTmp" : "Usually it's not very hot.",
		"ansRes" : "Thanks to special minerals, we can briefly control the flow of time.",
		
		"maxAnswers" : "5",
		
		"extraDialogues" : [
			{
				"id" : "15.1",
				"prerequisite" : "GvtAnswered",
				"question" : "How can we adapt to this gravity?",
				"answer" : "You have to make small steps each day and you'll see that you
				will able to run and jump in no time."
			},
			{
				"id" : "15.2",
				"prerequisite" : "ResAnswered",
				"question" : "What kind of special minerals?",
				"answer" : "They are called 'Pebbles of time', by throwing some of them behind of you
				you can briefly go back in time."
			}
		],
		"epilogue" : "The planet’s air was overly rich in oxygen. Every breath burned in the lungs 
		like a contained flame, and the higher-than-expected gravity made every step slow and deliberate. 
		The humans arrived prepared to endure, not to live—and for a long time, that was all they managed to do.
		In the end, the humans understood that it was neither technology nor their own determination that ensured 
		survival. It was the wisdom of the natives and their temporary control over time that transformed a hostile
		world into a home. And as the shining sky reflected light across the heavy, oxygen-rich air, the two species 
		learned the most important lesson: time, when shared, can unite more than strength ever could.
		Survivors: All."
	}
]
