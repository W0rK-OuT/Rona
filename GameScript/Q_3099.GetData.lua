return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040052,
	["lvmin"] = 51,
	["lvmax"] = 70,
}
nTable["check1"] = {
	["npc"] = 2040052,
	["item"] = {{["id"] = 4161014, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 13000,
	["item"] = {
		{["id"] = 4161014, ["count"] = -1},
		{["id"] = 2041013, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041014, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041016, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041017, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041019, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041020, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041022, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041023, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040513, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040514, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040516, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040517, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040500, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040501, ["count"] = 1, ["prop"] = 1}
	},
}
nTable["info"] = {
	["name"] = "미네르바 여신의 기록",
	["0"] = "#p2040052#는 여신의 탑이 발견되었다는 소식을 듣고는 자신의 부탁을 들어 줄 사람을 찾고 있다는데.. ",
	["1"] = "#p2040052#는 자신의 젊은 시절을 미네르바 여신을 연구하는데 바쳤지만 아무도 믿어주지 않았다고 했다. 여신의 탑에서 미네르바 여신에 대한 자료를 찾아달라는데, 좀 도와줄까?\n\n#i4161014# #t4161014# #b#c4161014##k/1",
	["2"] = "여신의 일기장을 도서관에 기증하니 #p2040052#가 대단히 기뻐했다. 오시리아의과거를 연구하는데 큰 도움이 될 것이라나? 책도 도서관에 있으면서 많은 사람에게 읽혀지는 것이 기쁘겠지.",
	["area"] = 47,
	["sortkey"] = "2",
}
nTable["say0"] = {
	["base"] = {["1"] = "얼마 전 오르비스에서 새로운 탑이 발견되었다는 소식을 들었습니다. 제 추측이 옳다면 그것은 분명 미네르바 여신의 탑일 것입니다.\r\n#L0##b미네르바 여신의 탑이요?#k#l", ["2"] = "네. 하늘도시 오르비스를 통치했던 아름다움과 지혜의 여신, 미네르바의 탑이 분명합니다. 여행자님. 괜찮으시다면 제 부탁을 들어주지 않으시겠습니까?"},
	["yes"] = {["1"] = "정말 감사합니다. 저는 젊었을 때 미네르바 여신을 연구했지만 아무 증거도 찾지 못해 외면당했습니다. 미네르바 여신은 오르비스 근처에 높다란 여신의 탑을 세웠다고 하는데 아무런 흔적도 남아있지 않았으니까요.", ["2"] = "하지만 구름 속에서 발견된 탑은 분명 미네르바 여신의 탑이 분명합니다. 여행자님. 부디 여신의 탑을 모험하시며 미네르바 여신이 남긴 기록을 찾아주세요. 미네르바 여신은 사람들처럼 일기 쓰기를 좋아했다고 하니, 그녀가 쓴 일기장을 찾아낸다면 제 연구를 증명할 충분한 자료가 될 것입니다."},
	["no"] = {["1"] = "정말 아쉽군요. 저는 도서관을 지켜야 하는 임무 때문에 직접 갈 수 없습니다. 마음이 바뀌시면 다시 말을 걸어 주세요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "바로 이것이 전설 속에서만 전해지던 미네르바 여신의 일기장이군요! 환상 속에만 묻혀 있을 거라 생각했는데.. 제 눈 앞에 있다니 믿겨지지 않습니다. "},
	["yes"] = {["1"] = "여신의 일기장은 앞으로 도서관에 안전하게 보관되며, 메이플 세계에 대한 연구를 위한 소중한 자료가 될 것입니다. 정말 감사합니다."},
	["stop"] = {
		["item"] = {["1"] = "미네르바 여신은 사람들처럼 일기 쓰기를 좋아했다고 하니, 그녀가 쓴 일기장을 찾아낸다면 제 연구를 증명할 충분한 자료가 될 것입니다."},
	},
}
return nTable
end