return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9040000,
	["normalAutoStart"] = 1,
	["lvmin"] = 13,
	["item"] = {{["id"] = 4001303, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 9010000,
	["endscript"] = "q10311e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "석화된 오토마우스 발견!",
	["area"] = 50,
	["autoStart"] = 1,
	["0"] = "유물을 분석하다가 신기한 유물을 발견한였다.",
	["1"] = "이 마우스를 가지고 운영자에게 가면 운영자가 고마워하며 성의 표시를 한다고 한다.",
	["2"] = "과거에 사용되었던 불법 프로그램인 석화된 오토 마우스를 운영자에게 가져다주었다. 언젠가 그들도 불법 프로그램 따위보다 직접 게임 하는 게 훨씬 재미있다는 걸 알게 될 거라며 고마워했다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "오~~신비한 유물을 발견하셨네요? '석화된 오토 마우스'라.. #b메이플 운영자님#k에게 보고해 보는 것은 어떨까요?"},
	["no"] = {["1"] = "운영자님에게 보고하면 아주 좋은 보상을 줄텐데요~싫으시다면 뭐 할 수 없죠!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "잘 가지고 왔어요. 어쩌구 저쩌구"},
	["stop"] = {
		["npc"] = {["1"] = "아직 운영자님에게 보고를 안하셨네요."},
	},
}
return nTable
end