return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1202005,
	["startscript"] = "q21013s",
	["quest"] = {{["id"] = 21012, ["state"] = 2}},
	["job"] = {2000},
}
nTable["check1"] = {
	["npc"] = 1202005,
	["endscript"] = "q21013e",
	["item"] = {{["id"] = 4032309, ["count"] = 1}, {["id"] = 4032310, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "영웅을 위한 선물",
	["area"] = 6,
	["0"] = "마을로 가는 길에 있는 #b#p1202005##k에게 말을 걸어 보자.",
	["1"] = "#p1202005#는 영웅을 만나면 선물을 하고 싶어 재료를 모아 두었다며, 상자 안에 있는 재료를 가져다 달라고 부탁했다. 상자를 부숴서 #b#t4032309##k과 #b#t4032310##k를 가져오면 되는 것 같다. 일반 공격으로 상자를 부수자.\r\n\r\n#i4032309# #t4032309# #b#c4032309# / 1#k\r\n#i4032310# #t4032310# #b#c4032310# / 1#k",
	["2"] = "#p1202005#가 만든 의자를 받았다. #p1202005#는 당신이 비록 약해져 있더라도 영웅인 것은 분명하니 아무런 걱정할 필요 없다고 말해 주었다.",
	["type"] = "[필수]",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "#b#t4032309##k과 #b#t4032310##k는 찾지 못하신 건가요? 이 주변에 있는 상자 안에 넣어 뒀으니 상자를 부수면 금방 찾을 수 있을 거예요. 일반 공격으로 상자를 부수실 수 있어요."},
	},
}
return nTable
end