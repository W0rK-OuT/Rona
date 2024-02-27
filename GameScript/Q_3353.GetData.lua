return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111006,
	["lvmin"] = 75,
	["startscript"] = "q3353s",
	["quest"] = {{["id"] = 3346, ["state"] = 2}},
	["fieldEnter"] = {261020401},
}
nTable["check1"] = {
	["npc"] = 2111002,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 5000,
}
nTable["info"] = {
	["name"] = "드랭이 바라는 것",
	["parent"] = "드랭은 누구인가",
	["order"] = 1,
	["0"] = "무심코 들어선 #m261020401# 지역... 수다스러운 유령 #b#p2111006##k이 역시나 말을 걸어온다. 수다 따위 들어주고 싶지 않은데... 어떻게 할까?",
	["1"] = "예전에 보았던 과거의 #p2111002#에 대해 묻자 파웬은 밝은 얼굴로 또 다시 #p2111002#에게 보내주었다. 그는 아무래도 예전에 보았던 #p2111002#보다 약간 더 시간이 흐른 후의 #p2111002# 같은데... ",
	["2"] = "피로해 보이는 #p2111002#에게 말을 걸어 보았다. 지친 얼굴이지만 묘하게도 약간 뿌듯한 웃음을 띄고 있는 #p2111002#은, 그의 실험은 실패했지만 대신 #p2111005#를 위한 약을 만드는데는 성공했다고 말했다... ",
	["area"] = 44,
	["autoStart"] = 1,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "아... 누구십니까? 처음 뵙는 분 같은데... 연구실에 함부로 들어오시면 안 됩니다. ...하지만 지금은 기분이 좋으니 아무래도 상관 없다는 생각부터 드네요. 후훗. "},
	["stop"] = {
		["npc"] = {["1"] = "응? 드랭은 만나지 못한 건가? 왜 여기 이러고 있는 거야?"},
	},
}
return nTable
end