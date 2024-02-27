return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1102000,
	["quest"] = {{["id"] = 20018, ["state"] = 2}},
	["job"] = {1000},
}
nTable["check1"] = {
	["npc"] = 1102000,
	["mob"] = {
		[1] = {["id"] = 100124, ["count"] = 5}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1200,
	["item"] = {
		{["id"] = 2000020, ["count"] = 20},
		{["id"] = 2000021, ["count"] = 20}
	},
}
nTable["info"] = {
	["name"] = "기사가 되기 위한 마지막 수련",
	["area"] = 15,
	["0"] = "#p1102000#의 기사가 되기 위한 마지막 수련을 시작해 보자.",
	["1"] = "#p1102000#는 이번에는 마지막으로 에레브에 있는 가장 강한 티티, #r#o100124##k를 사냥해 보라고 말했다.\r\n\r\n\n\n#o100124##r #a200191##k ",
	["2"] = "#o100124#를 사냥하고 돌아왔다. #p1102000#는 모든 수련이 완료 되었으니, #p1101002#에게 가서 보고하라고 말했다. ",
	["type"] = "[필수]",
}
nTable["say0"] = {
	["base"] = {["1"] = "자, 이제 기사가 되기 위한 세 번째 수련이자 마지막이 될 수련을 시작해 보지. 이번에는 이 에레브에 있는 티티들 중, 가장 강한 티티... #r#o100124##k를 사냥하는 거야. 어때? 할 수 있겠어?"},
	["yes"] = {["1"] = "좋아, 그럼 #b#m130010200##k으로 가서 #o100124# #r5마리#k를 잡은 후 돌아와줘. #o100124#는 다른 티티들에 비해 좀 강하지만, 자네 실력이라면 어렵지 않게 잡을 수 있을 거야."},
	["no"] = {["1"] = "시작도 하기 전에 겁을 먹지 말라고. 자네는 기사잖아? 기사라면 좀 더 용기를 내서 다시 말을 걸어줘."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o100124#는 사냥하고 무사히 돌아왔군! 좋아, 훌륭해! 자네 정도면 이제 노블레스를 벗어나서 수련기사가 될 자격이 충분해! "},
	["yes"] = {["1"] = "노블레스의 수련은 이걸로 끝이야. #b#p1101002##k가 자네를 기다리고 있을 테니 어서 가봐! 수련기사가 된 후 다시 만나지."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #b#o100124# 5마리#k는 퇴치하지 못한 건가? #m130010200#에 #o0100124#가 보이지 않는다면, #m130010210#을 찾아가 보라고. #o0100124#가 우글우글 할 테니까 말이야."},
	},
}
return nTable
end