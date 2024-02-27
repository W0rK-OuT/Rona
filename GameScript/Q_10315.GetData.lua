return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9040000,
	["normalAutoStart"] = 1,
	["lvmin"] = 13,
	["item"] = {{["id"] = 4001307, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 9010000,
	["endscript"] = "q10315e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "나이스 축구화 발견!",
	["area"] = 50,
	["autoStart"] = 1,
	["0"] = "유물을 분석하다가 신기한 유물을 발견한였다.",
	["1"] = "축구화라...이것은 어떤 물건이지? 일단 운영자님에게 말해보자!",
	["2"] = "반리, 스탠, 루이 누구에게 축구화를 줄까?",
}
nTable["say0"] = {
	["base"] = {["1"] = "음~이 축구화는 어떤 사연이 있을까요? 일단 운영자님에게 보고해보세요."},
	["no"] = {["1"] = "뭐~싫다면 어쩔 수 없죠~"},
}
nTable["say1"] = {
	["base"] = {["1"] = "잘 가지고 왔어요. 어쩌구 저쩌구"},
	["stop"] = {
		["npc"] = {["1"] = "아직 운영자님에게 보고를 안하셨네요."},
	},
}
return nTable
end