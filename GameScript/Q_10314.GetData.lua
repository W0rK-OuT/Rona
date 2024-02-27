return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9040000,
	["normalAutoStart"] = 1,
	["lvmin"] = 13,
	["item"] = {{["id"] = 4001306, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 9010000,
	["endscript"] = "q10314e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "번쩍번쩍 빛나는 손목시계 발견!",
	["area"] = 50,
	["autoStart"] = 1,
	["0"] = "유물을 분석하다가 신기한 유물을 발견한였다.",
	["1"] = "손목시계라...이것은 어떤 물건이지? 일단 운영자님에게 말해보자!",
	["2"] = "이 좋아 보이는 손목시계는 코르바의 손목시계라고 한다. 코르바에게 직접 가져다 줄까? 아님 운영자님에게 맡겨 놓을까?",
}
nTable["say0"] = {
	["base"] = {["1"] = "흠...손목시계라..이것은 나도 알 수 없는 걸요? 운영자님에게 한번 보고해보세요."},
	["no"] = {["1"] = "흠~싫다면 할 수 없죠~"},
}
nTable["say1"] = {
	["base"] = {["1"] = "잘 가지고 왔어요. 어쩌구 저쩌구"},
	["stop"] = {
		["npc"] = {["1"] = "아직 운영자님에게 보고를 안하셨네요."},
	},
}
return nTable
end