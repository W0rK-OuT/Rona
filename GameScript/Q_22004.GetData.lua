return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013103,
	["startscript"] = "q22004s",
	["lvmin"] = 5,
	["quest"] = {{["id"] = 22003, ["state"] = 2}},
	["job"] = {2001},
}
nTable["check1"] = {
	["npc"] = 1013103,
	["endscript"] = "q22004e",
	["item"] = {{["id"] = 4032498, ["count"] = 3}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "울타리 고치기",
	["area"] = 7,
	["type"] = "[필수]",
	["0"] = "#b아빠#k가 뭔가 시키실 일이 있는 것 같다. 아빠, 그리드씨에게 말을 걸어 보자.",
	["1"] = "아빠는 #o1210100#들 몇 마리가 뛰쳐나가는 바람에 농장 울타리에 구멍이 생겼다며, 울타리를 고칠 수 있도록 #t4032498#을 구해 달라고 하셨다. 주변에 있는 #r#o0130100##k를 잡아 #b#t4032498##k을 구해 오자.\r\n\r\n#i4032498# #t4032498# #b#c4032498# / 3#k",
	["2"] = "#t4032498#를 드렸더니 아빠는 울타리 만드는데 쓰고 남은 나무들로 의자를 만들어 주셨다.",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4032498# 3개#k는 구하지 못한 거니? 주변에 돌아다니는 #r#o0130100##k를 잡으면 #t4032498#을 얻을 수 있단다."},
	},
}
return nTable
end