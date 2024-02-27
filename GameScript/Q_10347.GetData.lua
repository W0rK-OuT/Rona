return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9010010,
	["start"] = "200906280000",
	["quest"] = {{["id"] = 10346, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 9000067,
	["endscript"] = "q10347e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "주인을 기다리는 늑대",
	["area"] = 50,
	["0"] = "아란의 흔적을 모으려면 카산드라부터 찾아가야겠지?",
	["1"] = "주인을 기다리고 있는 늑대를 찾아보라고?",
	["2"] = "주인을 기다리는 듯한 늑대는 내가 다가서자 소스라치게 놀라며, 아란의 흔적을 남겼다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "아란이 깨어나는 그날. 그들에게 꼭 필요한 것들이 있지.. 그들을 전투를 도와줄.. 바람을 가르며.. 그게 뭔지 알고 있어?#b#L0#음... 타고 다닐 수 있는.. 뭐 그런거 아닌가요?#l\n#k", ["2"] = "그래 맞아. 바로 늑대야. 얼마 전부터 주인을 기다리고 있는 늑대들을 본 적이 있어?"},
	["yes"] = {["1"] = "그래. 봉인을 깨고 부활할 다섯 영웅들을 기다리고 있는 늑대를 찾아봐. 분명 아란의 흔적을 얻게 될테니..."},
	["no"] = {["1"] = "늑대를 찾아야 아란의 흔적을..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "리스항구 근처에서 봤다는 사람이 있던데..."},
	},
}
return nTable
end