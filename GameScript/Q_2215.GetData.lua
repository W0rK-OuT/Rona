return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052002,
	["interval"] = 0,
	["quest"] = {{["id"] = 2214, ["state"] = 2}, {["id"] = 2220}},
	["item"] = {{["id"] = 4031894}},
}
nTable["check1"] = {
	["npc"] = 1052108,
	["endscript"] = "q2215e",
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -2000,
	["item"] = {
		{["id"] = 4031894, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "구겨진 종이조각 다시 찾기",
	["0"] = "늪지대 오두막에서 구한 정보원 명단을 잃어버렸다... 어떻게 하지? 다시 #b제이엠#k을 찾아가 보자.",
	["1"] = "제이엠은 혀를 차며 하는 수 없으니 다시 한 번 정보원 목록을 주겠다고 말했다. 하지만 이번에는 #b정보료 2000 메소#k를 지불하라며, 쓰레기통 안에 메소를 넣어두라는 말도 덧붙였다. 그럼 #b#m107000300##k로 가자.",
	["2"] = "쓰레기통에서 정보원 명단을 꺼내고 대신 2000 메소를 넣어두었다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "흠... #o6220000#에 관한 음모의 실마리는 찾은 건가? 뭐? 정보원 명단을 잃어버렸다고? 누군가 명단을 주워 보기라도 하면 어쩔 거야?! 정보원은 비밀이 생명이라는 것 몰라?!", ["2"] = "휴우... 정보원들에게 잃어버린 명단을 찾으라 하기로 하고, 이번만은 넘어가 주지. 하지만 다음 번에는 용서 없을 거야. 다시 #b#m107000300##k로 가서 명단을 받도록 해."},
	["yes"] = {["1"] = "물론 명단은 정해진 시간에만 받을 수 있어. 잊은 건 아니겠지? #b오후 5시부터 8시 사이#k야. 아, 그리고... 실수에 대한 대가로 이번에는 정보료를 받겠어. 쓰레기통 안에 #b2000 메소#k를 넣어 놓고 명단을 가져가도록 해. ", ["2"] = "명단에 있는 정보원들에게서 모든 정보를 구한 후에는, 다시 와서 중간 보고를 하도록 해. 어떤 정보가 쓸모 있고, 어떤 정보가 쓸모 없는지 선별해 줄테니까."},
	["no"] = {["1"] = "뭐야? 다시 할 자신이 없다는 건가?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#b(먼지 투성이인 쓰레기통 내부에 손을 넣자 바스락거리는 뭔가가 만져집니다. 뭔가을 꺼내겠습니까?)#k", ["2"] = "#b(거미줄로 범벅이 된 구겨진 종이조각을 꺼냈다.)#k"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #m107000301#에는 안 간 모양이군... #b#m107000300#에 있는 오두막이야. #b오후 5시부터 8시 사이#k에 가야만 정보를 얻을 수 있어. #b2000 메소#k도 잊지 말고 가져가라고."},
	},
}
return nTable
end