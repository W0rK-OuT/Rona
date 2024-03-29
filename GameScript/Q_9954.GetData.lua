return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9010010,
	["lvmin"] = 20,
	["lvmax"] = 30,
}
nTable["check1"] = {
	["npc"] = 2101018,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["nextQuest"] = 9955,
}
nTable["info"] = {
	["name"] = "카산드라의 건망증",
	["parent"] = "아리안트 투기대회 개최",
	["order"] = 1,
	["0"] = "#b#p9010010##k가 깜빡 잊고 전하지 못한 소식이 있다며 당장 그녀에게 와달라는데... 무슨 일이지?",
	["1"] = "#p9010010#는 깜빡 잊고 모두에게 전하지 못한 소식이 있다며 #b#p2101018##k에게 가보라고 말했다. ...#p2101018#? 그건 누구지? 이름이 어쩐지 #m260000000# 사람 같은데... #p9010010#의 말에 따르면 #p2101018#는 #b#m260000000#나 #m102000000##k에서 만날 수 있는 것 같다.",
	["2"] = "험상궂은 얼굴로 창을 들고 서있는 #p2101018#... 도대체 그가 무슨 사건을 벌이고 있는 걸까?",
	["area"] = 50,
}
nTable["say0"] = {
	["base"] = {["1"] = "아아앗! 큰일났어! 큰일 났다고! 메이플 월드의 모든 일을 속속들이 알고 있는 이 #p9010010#님이 이런 실수를 하다니...! 아아~ 이럴 수는 없어! 뭣? 무슨 일이냐고?", ["2"] = "#b#m260000000##k에 특별한 사건이 벌어지고 있는데, 그 소식을 사람들에게 전하는 일을 깜빡 했지 뭐야! 덕분에 사람들이 그 사건에 대해 모르고 넘어가는 일이 너무 많은 것 같아! 맙소사...", ["3"] = "아니, 이럴 때가 아니지! 레벨을 보니, 너도 딱 지원자격에 들어맞는구나! 그럼 어서 달려가! #b#p2101018##k에게로!"},
	["yes"] = {["1"] = "뭐? #p2101018#가 누구냐고? 그런 거 설명할 시간 없어! 어서 가라고... 아, #p2101018#가 어디 있는지 말을 안해줬구나! #p2101018#는 #b#m260000000##k나 #b#m102000000##k에 있을 거야! 그럼 어서 그에게 가봐!"},
	["no"] = {["1"] = "...에? #p2101018#에게 가기 싫다는 거야? 그럼 하는 수 없지만... 에잇! 그럼 어서 비켜! 싫다는 사람 말고, 다른 사람들에게라도 이 소식을 전해야겠어!"},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "아직도 #b#p2101018##k에게는 안 간 거야? 그는 #b#m260000000##k이나 #b#m102000000##k, #b#m100000000##k, #b#m220000000##k, #b#m120000000##k에 가면 만날 수 있다고!"},
	},
}
return nTable
end