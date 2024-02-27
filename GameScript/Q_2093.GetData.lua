return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022007,
	["quest"] = {{["id"] = 2092, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1012111,
	["item"] = {{["id"] = 4031173, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031173, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 200,
	["money"] = 500,
	["item"] = {
		{["id"] = 4031173, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "내 딸을 찾고 싶어 2",
	["parent"] = "내 딸을 찾고 싶어",
	["order"] = 2,
	["1"] = "신기하게 이얀은 기억을 되찾았다. 정말 다행이다. 이제는 브루스 아저씨와 이얀이 서로 만나는 일만 남았다. 하지만 먼저 이얀의 편지를 브루스에게 전달해줘야 한다.",
	["2"] = "브루스의 딸 이얀이 기억을 되찾아서 다행이다. 아저씨도 딸을 찾아서 정말 다행이고~",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "우리 아빠에게 편지를 꼭 전해주세요! 부탁드려요~ 어서 빨리 아빠를 보러 가야겠어요~"},
}
nTable["say1"] = {
	["base"] = {["1"] = "오! 정말...흑...흑...내 딸이 맞군... 이렇게 기쁜 일이 있을 수가... 자네 너무 고맙네. ", ["2"] = "내 딸이 살아 있어서 정말 다행이네. 어서 빨리 내 딸을 만나러 가야겠군. 이것은 자네 여행에 보탬이 되었으면 해서 주는 돈이네 얼마 되지는 않지만 잘 써주게~ "},
	["yes"] = {["1"] = "너무 기쁜일이야~"},
	["ask"] = {"소중히 가지고 다니세요! 여기 다시 써드릴게요. "},
}
return nTable
end