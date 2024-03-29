return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052121,
	["lvmin"] = 35,
	["lvmax"] = 50,
	["quest"] = {{["id"] = 2278, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052119,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1280,
}
nTable["info"] = {
	["name"] = "헤어 디자이너 섭외 완료",
	["area"] = 30,
	["0"] = "어렵게 마샬을 헤어디자이너로 섭외 했다. 기쁜 소식을 #b라나#k에게 전하자.",
	["1"] = "라나는 혁이의 1호팬 #b라라#k에게 무대의상을 부탁하라고 했다.",
	["2"] = "#b라라#k는 혁이의 데뷔 소식에 기뻐하며, 어떤 의상이 좋을지 생각할 시간을 달라고 했다.",
	["rewardSummary"] = "경험치 1,280",
}
nTable["say0"] = {
	["base"] = {["1"] = "어떻게 됐죠? 마샬을 섭외한건가요?\r\n#L0##b네, 제가 드디어 마샬을 설득했어요!#l\n#k", ["2"] = "휴~ 다행이군요. 얼마나 조마조마했는지 모르겠어요. 자, 그럼 다음에는 무엇을 준비해야 하지? (잠시 차트를 보던 라나… 고개를 든다.) 이번에는 무대의상을 준비해야겠어요. 뭐니뭐니해도 공연은 퍼포먼스가 중요하니까요. 이번에도 #h0#씨가 수고해줘야겠어요. 준비 됐나요?"},
	["yes"] = {["1"] = "음.. 무대의상은.. 아무래도 혁이의 1호팬 라라에게 부탁하는게 좋겠어요. 그 아이 아직 어리지만 패션센스가 굉장히 넘친다고요. 어서 #b라라#k, 그 아이를 찾아가요."},
	["no"] = {["1"] = "서둘러야 해요. 시간이 얼마 없어요."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "무슨 일로 저를 찾아 오신건가용? 네? 그게 사실인가용? 저의 우상. 저의 혁이 오빠가 드디어 무대에 설수 있게 되었다고용? 무대 의상이라면 저에게 맡겨 주세용."},
	["yes"] = {["1"] = "음~ 어떤 옷이 좋을까나~ 아무래도 잠시 생각할 시간이 필요하겠어용~ 잠시 후에 저를 다시 찾아 주세용~호호호~"},
	["stop"] = {
		["npc"] = {["1"] = "교복을 입은 귀여운 #b라라#k 라라를 찾아가 봐요."},
	},
}
return nTable
end