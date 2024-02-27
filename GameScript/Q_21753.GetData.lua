return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2131000,
	["lvmin"] = 63,
	["startscript"] = "q21753s",
	["infoNumber"] = 21764,
	["infoex"] = {"1"},
	["quest"] = {{["id"] = 21751, ["state"] = 2}},
	["job"] = {2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1002104,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 20000,
}
nTable["info"] = {
	["name"] = "빼앗긴 엘린 숲의 봉인석",
	["area"] = 6,
	["0"] = "엘린 숲의 봉인석을 블랙윙의 #o9300353#가 가져가 버렸다. 어쩌지? 엘린 숲의 #b#p2131000##k와 의논해 보자.",
	["1"] = "#p2131000#는 자신에게 또 다른 봉인석의 정보가 적힌 편지가 있다며, 그것을 전해 주겠다고 말했다. 하지만 편지를 받을 수 없다... #b이미 나와 #p2131000#는 다른 시간대의 사람인 것이다#k. \n\n그러자 #p2131000#는 자신은 아주 긴 시간을 사는 요정이니 당신과 같은 시간대에 편지를 전해 주겠다고 말했다. 엘린 숲을 떠나 #b원래의 시간에서 #p2131000#와 만나면 된다#k. #p2131000#는 어디 있을까. #b#p1002104##k에게 물어 보자.",
	["2"] = "#p1002104#에게 #p2131000#라는 사람에 대해 아냐고 물었다. 그러자 #p1002104#는 빅토리아 아일랜드에서 가장 유명한 사람 중 한 명이 아니냐며, #m100000000# #m100000201#의 #p2131000#를 알려 주었다. 어서 궁수교육원으로 가서 헬레나를 만나 보자.",
	["type"] = "[스킬]",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "오, 영웅님이잖아? 과거에는 다녀온 거야? 혹시 아는 사람은 만났어? 응? #p2131000#를 아냐고?"},
	["yes"] = {["1"] = "그야 당연히 알지. 빅토리아 아일랜드에서 가장 유명한 인물 중 한 명이잖아. #m100000000#의 수호자, 모든 궁수들의 스승. #b#m100000000# #m100000201#의 전직관 #p2131000##k를 누가 모르겠어? 그런데 왜? #p2131000#를 만날 생각인 거야? 그럼 어서 궁수교육원으로 가봐."},
	["stop"] = {
		["npc"] = {["1"] = "#b당신의 시간대에서 다시 저를 찾아주세요#k. 분명 그때도 당신을 기다리고 있을 거예요. 약속을 지키기 위해... "},
	},
}
return nTable
end