return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012010,
	["interval"] = 60,
	["quest"] = {{["id"] = 3048, ["state"] = 2}, {["id"] = 3050}},
	["item"] = {{["id"] = 4031202}},
}
nTable["check1"] = {
	["npc"] = 2012010,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -300000,
	["item"] = {
		{["id"] = 4031202, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "잃어버린 네펜데스 주스",
	["0"] = "네펜데스 주스를 잃어버렸다면 엘마를 다시 찾아가보자.",
	["1"] = "잃어버린 네펜데스 주스를 다시 얻기 위해서 엘마를 만났다.",
	["2"] = "엘마에게 다시 네펜데스 주스를 얻었다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "제가 힘들게 만든 #b네펜데스 주스#k를 잃어버렸다는 말씀입니까?"},
	["yes"] = {["1"] = "어떻게 그럴 수가 있습니까? 힘들게 만든 것을 그렇게 쉽게 잃어버리고요...", ["2"] = "제가 좀 많이 만들어 놓아서 다행입니다. 하지만 그냥 드리지 않겠습니다. 저한테 #b300000#k 메소를 주셔야 됩니다. 준비되면 저한테 다시 말 걸어주세요."},
	["no"] = {["1"] = "아니라면 다행이고요..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "여기 있습니다. 이제 다시는 잃어버리지 않도록 주의하세요. 저한테도 #b네펜데스 주스#k가 얼마 남지 않았습니다. 이제는..."},
	["yes"] = {["1"] = "잃어버리지 말고 잘 전달해주세요."},
}
return nTable
end