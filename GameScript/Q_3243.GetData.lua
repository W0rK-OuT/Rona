return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041004,
	["quest"] = {{["id"] = 3242, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2081000,
	["item"] = {{["id"] = 4031347, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031347, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 4031347, ["count"] = -1},
		{["id"] = 4031346, ["count"] = 2}
	},
}
nTable["info"] = {
	["name"] = "장난감성의 전령2",
	["parent"] = "장난감성의 전령",
	["order"] = 2,
	["0"] = "#m220000000#의 경비병 #p2041004#의 제안으로 #m220000000#성의 전령으로서 #m240000000#로 떠나게 되었다. #p2041004#은 #m220000000#에서 지원해주는 #b#t4161013##k를 주었다. 그런데 어떤 물건을 건내 줘야 하는거지?",
	["1"] = "#m220000000#의 경비병 #p2041004#에게 #m220000000#성의 전령으로서 #m240000000#라는 곳으로 가달라는 부탁을 받았다. #m240000000#는 오시리아 대륙에 있는 미나르숲 한가운데 있는 마을인데, 그곳의 촌장인 타타모에게 #m220000000#에서 준비한 선물을 전해달라고 했다. #p2041004#이 준 물건을 #m240000000#의 #p2081000#에게 전해주자.\n\n#t4031347#  #b#c4031347##k / 1",
	["2"] = "#m220000000#의 전령으로 리프레 마을 촌장인 타타모에게 장난감성의 선물을 전달했다. 타타모는 고마움의 표시로 엘리니아와 리프레를 오갈 수 있는 마법의 씨앗을 주었다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "#m220000000#의 전령사로서 맡으실 일은 #m220000000#성에서 준비한 선물을 #m240000000# 마을의 #p2081000#씨께 전해주는 일입니다. 이 상자에는 #m220000000#에서 정성껏 준비한 선물들이 들어있기 때문에 각별히 주의해 주세요."},
	["no"] = {["1"] = "왜요? 갑자기 맘이 바뀌신건가요? 이렇게 명예스러운 일을 마다하시는건가요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "허허허. 어디서 온 누구길래 날 찾아온거요? \r\n#L0# #b저는 루디브리엄성에서 왔습니다. 루디브리엄성에서 리프레마을과 우호관계를 맺고 싶다면서 선물을 보내왔습니다.", ["2"] = "오오~ 정말 친절한 사람들이군요. 허허. 친구가 생긴다는건 정말 기분 좋은 일이지요. 직접 이 곳까지 오느라 수고가 많으셨겠습니다. 당신의 노고에 대한 나의 작은 보답을 받으시오. "},
	["yes"] = {["1"] = "그 마법의 씨앗은 신비한 마법의 힘을 가진 꽃의 씨앗인데 공간과 공간을 연결하는 마력을 가지고 있다오. 이 마법의 씨앗을 가지고 있으면 다른 사람들은 갈 수 없는 숲의 통로로 들어갈 수 있다오. 마을 서쪽 어딘가에서 숲의 통로를 봤다고 하던데... 한번 가보는건 어떻겠소?"},
	["stop"] = {
		["0"] = {},
		["npc"] = {["1"] = "제가 드린 물건을 우정의 뜻으로 리프레 마을의 촌장인 타타모에게 전해주세요."},
		["item"] = {["1"] = "숲 밖에는 지금까지 가보지 못한 여러 마을들이 있겠죠? 그들과 친구가 될 수 있다면 좋을텐데 말이죠."},
	},
	["ask"] = {"이 선물은 루디브리엄 주민들의 마음이 담겨져 있는 선물입니다. 그러니 다시는 잃어버리면 안되네. 알겠나?"},
	["ask"] = 1,
}
return nTable
end