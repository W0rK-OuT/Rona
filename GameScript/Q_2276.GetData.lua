return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052121,
	["lvmin"] = 35,
	["lvmax"] = 50,
	["quest"] = {{["id"] = 2275, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052124,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1280,
}
nTable["info"] = {
	["name"] = "메이크업 아티스트 섭외 완료",
	["area"] = 30,
	["0"] = "메이크업 아티스트를 섭외했다. #b라나#k에게 소식을 전하자.",
	["1"] = "이번에는 헤어 디자이너를 섭외하라고? #b마샬#k을 찾아가 부탁해 보자.",
	["2"] = "#b마샬#k은 혁이의 헤어를 담당할 수 없다고 했다. 과연 이유가 무엇일까? #b라나#k를 찾아가 상의해 보자.",
	["rewardSummary"] = "경험치 1,280",
}
nTable["say0"] = {
	["base"] = {["1"] = "어떻게 되었나요? 티나를 섭외했나요?\r\n#L0##b네, 티나가 메이크업을 맡아주기로 했어요. 그리고 라나님께 안부를 전해드리라고도 했어요.#l\n#k", ["2"] = "역시, 그녀라면 부탁을 들어 줄거라 생각했어요. 좋아요! 다음은 헤어 디자이너 섭외에요. 물론 자신 있겠죠?"},
	["yes"] = {["1"] = "헤어 디자이너라면 물론 마샬이에요. 그의 손길을 거치지 않고, 무대에 선다는 건 상상 조차 할 수 없어요. 어서 가서 #b마샬#k을 섭외해 오도록 해요."},
	["no"] = {["1"] = "자신이 없나요? 당신이라면 분명 할 수 있을텐데요."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "누구시죠? 죄송합니다만, 당분간 영업을 할 수 없으니 그냥 돌아가 주세요.\r\n#L0##b안녕하세요. 저는 혁이의 헤어를 부탁하러 온 #h0#입니다. 얼마 후 혁이가 가수로 데뷔를 하거든요.#l\n#k", ["2"] = "아, 그 얘기라면 소문을 들어서 알고 있습니다. 저도 도와드리고 싶지만 어렵게 되었네요.\r\n#L0##b무슨 일이라도 생기신 건가요? 제가 도와드릴 일이라도 있다면 말씀해주세요.#l\n#k", ["3"] = "아니에요. 처음 본 사람에게 부탁이라뇨… 저, 혼자 해결할 수 있습니다."},
	["yes"] = {["1"] = "#b라나#k님께 죄송하다고 전해주세요."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["npc"] = {["1"] = "헤어는 뭐니뭐니 해도 마샬이 최고죠. 어서 #b마샬#k을 섭외해오도록 해요."},
	},
	["ask"] = 1,
}
return nTable
end