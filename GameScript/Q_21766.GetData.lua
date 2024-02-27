return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002001,
	["startscript"] = "q21766s",
	["lvmin"] = 13,
	["quest"] = {{["id"] = 21706, ["state"] = 1}},
	["job"] = {2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1002001,
	["endscript"] = "q21766e",
	["quest"] = {{["id"] = 21767, ["state"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "수상한 존",
	["area"] = 6,
	["0"] = "#p1002001#가 요즘 #p20000#이 좀 이상하다고 하는데 리스항구의 #p1002001#에게 가서 무슨 일인지 알아보자.",
	["1"] = "#p20000#이 수상한 행동을 보이기 시작한 것은 어떤 나무상자를 가지고 다니면서부터 라고 한다. #p20000#의 옆에 있는 나무상자를 조사해야한다.\r\n\r\n#y21767# #b(#u21767#)#k\r\n",
	["2"] = "#p20000#과의 약속대로 #p1002001#에겐 나무상자 속 관절염 치료제에 대해 밝히지 않았다.\r\n\r\n",
}
nTable["say0"] = {
	["ask"] = 1,
}
nTable["say1"] = {
	["stop"] = {
		["default"] = {["1"] = "아직 나무상자의 비밀을 밝혀내지 못한거야? "},
	},
}
return nTable
end