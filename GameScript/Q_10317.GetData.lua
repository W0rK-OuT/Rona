return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9040000,
	["normalAutoStart"] = 1,
	["lvmin"] = 13,
	["item"] = {{["id"] = 4001309, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1022002,
	["endscript"] = "q10317e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "여성스런 머리끈 발견!",
	["area"] = 50,
	["autoStart"] = 1,
	["0"] = "유물을 분석하다가 신기한 유물을 발견한였다.",
	["1"] = "여성스런 머리끈에 [만지]라고 써있네...일단 만지에게 가져가 보자~",
	["2"] = "만지가 이상하리만치 흥분하면서 머리끈을 가져갔다. 이거 이상한데..?",
}
nTable["say0"] = {
	["base"] = {["1"] = "상당히 여성스런 머리끈이네요..앗! 여기 보세요.. 여기 만지라고 쓰여 있어요! 페리온의 만지님에게 가져가 보시는 게 좋을 것 같은데요?"},
	["no"] = {["1"] = "싫다면 어쩔 수 없죠~"},
}
nTable["say1"] = {
	["base"] = {["1"] = "잘 가지고 왔어요. 어쩌구 저쩌구"},
	["stop"] = {
		["npc"] = {["1"] = "만지님에게 보고해보세요."},
	},
}
return nTable
end