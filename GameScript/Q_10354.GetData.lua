return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9040000,
	["normalAutoStart"] = 1,
	["startscript"] = "q10354s",
	["quest"] = {{["id"] = 10356}, {["id"] = 10355}},
	["item"] = {{["id"] = 4001316, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 9000066,
	["infoNumber"] = 10354,
	["infoex"] = {"87"},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "카산드라의 앨범을 누구에게?",
	["area"] = 50,
	["autoStart"] = 1,
	["0"] = "유물을 열심히 발굴중이였다.",
	["1"] = "카산드라의 앨범을 발견하였다. 음..이것을 카산드라에게 줄까? 가가에게 줄까?",
	["2"] = "앨범을 돌려주니 아란의 흔적을 주었다.",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "카산드라의 앨범을 전달해주세요. "},
	},
}
return nTable
end