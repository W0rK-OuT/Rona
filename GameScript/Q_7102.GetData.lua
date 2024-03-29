return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041021,
	["quest"] = {{["id"] = 7101, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2041021,
	["quest"] = {{["id"] = 7104, ["state"] = 2}},
	["item"] = {{["id"] = 4031179, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 5600,
	["money"] = 15000,
    ["item"] = {
        {["id"] = 4031179, ["count"] = -1}
    },
}
nTable["info"] = {
	["name"] = "시간의 구",
	["parent"] = "루디브리엄을 사수하라",
	["order"] = 3,
	["0"] = "시간의 구를 생성할 동안 해야할 일이 더 있을 듯 하다. #p2041021#를 만나볼까...",
	["1"] = "시간의 구를 생성하는 동안 #p2041023#를 통해 #t4031179:#을 모아오라는데.. \n\n#t4031179:# #r#c4031179#/1#k",
	["2"] = "#p2041021#가 말하는 #t4031179:#을 찾아냈다. 파풀라투스를 쓰러트리기 위해서는 80레벨 이상의 강한 사람이 필요하다고 하는데...",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신이 가져다 준 재료로 지금 시간의 구를 만들고 있는 중입니다. 그 동안.. 동력실에 생긴 차원의 균열을 막을 #b#t4031179##k을 찾아야 합니다."},
	["yes"] = {["1"] = "좋습니다. 차원의 균열을 막을 조각이 필요한데 그 것에 관해서는 시간의 통로 왼쪽에 있는 #p2041023#를 찾아가면 균열을 막을 수 있는 #b#t4031179##k에 대해 알려줄 것입니다. 그를 통해 #t4031179:#을 구해오시면 됩니다. \n\n#i4031179# #t4031179# #r1#k개"},
	["no"] = {["1"] = "시간의 구만 만들려진다고 해서... 루디브리엄의 동력을 완전히 되돌릴 수 있는 것이 아닙니다. 그 곳을 침범하고 그 힘을 악용하고 있는...몬스터를 퇴치하기 위해서는 그가 들어온 차원의 균열을 완전히 막아버려야 합니다. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4031179:#을 찾아 온 건가요? 시간의 구는 제대로 만들어지고 있는 것 같아요. 아직 시간이 더 필요하구요."},
	["yes"] = {["1"] = "맞는 것 같군요. 이 곳에서 #o8500002#의 기운이 느껴지는 듯...이 시간의 구는 완성되는 대로 제가 동력실로 돌려 놓을 것입니다. 그 전까지 동력실의 #o8500001#의 힘의 원천이 되어주던 #b시간의 구#k를 파괴하고 #o8500002#를 이 곳에서 내몰아야 합니다. 더욱 막중한.. 임무를 맡을 준비가 되었다면 다시 저를 찾아와 주세요. 적어도 레벨80이상 되는 사람만이 대적할 수 있을 것 같습니다."},
	["stop"] = {
		["item"] = {["1"] = "#p2041023#에게 확인받지 못한 건가요?"},
		["quest"] = {["1"] = "어라? 올바른 방식으로 균열의 조각을 갖고 오신게 맞나요?"},
	},
}
return nTable
end