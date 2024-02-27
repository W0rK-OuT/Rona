return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300007,
	["startscript"] = "q2338s",
	["lvmax"] = 38,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 2318, ["state"] = 2}, {["id"] = 2322}},
	["item"] = {{["id"] = 2430014}},
}
nTable["check1"] = {
	["npc"] = 1300007,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "킬라 버섯 포자가 필요해요",
	["area"] = 30,
	["0"] = "#b킬라 버섯 포자#k를 잃어 버렸다면 #b스카스#k에게 가보자.",
	["1"] = "#b킬라 버섯 포자#k를 다시 받았다.",
	["2"] = "#b킬라 버섯 포자#k를 다시 받았다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "#b킬라 버섯 포자#k 아이템을 잃어버리셨나요?"},
	["yes"] = {["1"] = "어렵게 만든 아이템이니 소중하게 사용해 주세요."},
	["no"] = {["1"] = "아 필요가 없으시 다구요? 필요하다면 다시 찾아와 주세요."},
}
nTable["say1"] = {
}
return nTable
end