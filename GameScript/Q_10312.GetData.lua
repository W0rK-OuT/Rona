return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9040000,
	["normalAutoStart"] = 1,
	["lvmin"] = 13,
	["item"] = {{["id"] = 4001304, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 9000021,
	["endscript"] = "q10312e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "가가의 잃어버린 안경 발견!",
	["area"] = 50,
	["autoStart"] = 1,
	["0"] = "유물을 분석하다가 신기한 유물을 발견한였다.",
	["1"] = "가가의 안경같이 생긴 아이템을 발견하였다. 가가에게 가서 아는지 물어보자.",
	["2"] = "가가는 우주선에 납치 됐을 때 잃어버린 안경이라며 고마워했다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "어라? 이것은 #b'가가의 안경'#k 같이 생기지 않았어요? 가가에게 물어보는 것이 좋을 것 같아요."},
	["no"] = {["1"] = "싫으시다면 할 수 없죠~"},
}
nTable["say1"] = {
	["base"] = {["1"] = "잘 가지고 왔어요. 어쩌구 저쩌구"},
	["stop"] = {
		["npc"] = {["1"] = "안경은 가가님것 같은데요? 가가님에게 가보셨나요?"},
	},
}
return nTable
end