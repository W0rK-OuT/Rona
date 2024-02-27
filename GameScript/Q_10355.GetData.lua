return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000021,
	["item"] = {{["id"] = 4001316, ["count"] = 2}},
}
nTable["check1"] = {
	["npc"] = 9000021,
	["endscript"] = "q10355e",
	["item"] = {{["id"] = 4001316, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "카산드라의 앨범 전달",
	["area"] = 50,
	["1"] = "카산드라의 어렸을적 사진이 있는 앨범.. 세상에 이게 정말 카산드라가 맞아? 이 앨범을 가가에게 주면 정말 좋아하겠는 걸?",
	["2"] = "카산드라의 어렸을 적 사진이 잔뜩 있는 앨범을 가가에게 전해주니 가가가 이제 카산드라에게 해방 될 수 있다며 기뻐한다.",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "카산드라의 앨범을 주신다고 하신 것 아닌가요?"},
	},
}
return nTable
end