return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002001,
	["lvmin"] = 15,
	["quest"] = {{["id"] = 2007, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1012101,
	["item"] = {{["id"] = 4031006, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031006, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 2000,
	["money"] = 5000,
	["item"] = {
		{["id"] = 4031006, ["count"] = -1},
		{["id"] = 1002026, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "이상한 약 전해주기",
	["parent"] = "마야와 이상한 약",
	["order"] = 7,
	["1"] = "리스 항구의 테오에게 #b반짝이는 돌#k을 넘겨주고 그 대신 #b이상한 약#k을 받았다. 이제 이 약을 헤네시스에 있는 #r마야#k에게 전해주기만 하면 된다. 아무리 생각해도... 괜히 약을 구해 준다고 약속한 것 같단 말야... 그나저나 이 약... 왠지 맛있어 보이는데 가는길에 목이 마르게 되면 그냥 마셔버릴까...?",
	["2"] = "헤네시스의 마야에게 이상한 약을 건네주었다. 이걸로 마야의 병도 조금은 나아지겠지? 마야는 고맙다며 5000 메소와 #b갈색 삿갓#k을 주었다. 이 삿갓... 뜨거운 햇볓 아래를 걸어갈 때라면 엄청 도움이 되겠지만 왠지 허름하단 말야... 쓰고 있으면 이상한 소리가 나는것이 안에서 벌레가 왔다 갔다 하는것 같기도 하고.. 괜찮을까...?!?!",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "고맙네!!! 대신 이 약을 가져가게나. #b#m100000000##k의 #r#p1012101##k가 또 지병이 악화된 모양이더군. 이 약을 가져다 주면 조금은 나아질거야..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "아휴... 이곳 저곳 아프지 않은 곳이 없네... 어머...? 그... 그건 #b#t4031006##k 아닌가요??? 어떻게 얻으신 거죠? 대단하신 분인가봐요!", ["2"] = "저... 그 약을 저에게 주실수는 없나요? 대신 저에게는 필요없는 물건을 드리겠어요. 제발... 부탁드려요. 그 약이 필요해요..."},
	["yes"] = {["1"] = "고맙습니다... 이걸로 오랜 병이 나아질지도 모르겠어요. 이건 저에게는 필요없는 물건이랍니다. 부디 여행에 도움이 되기를 바래요. 감사의 뜻으로 약간의 메소도 드릴게요..."},
	["stop"] = {
		["npc"] = {["1"] = "어서 내가 준 #b#t4031006##k을 #p1012101#에게 전해 주게나... 여기서 #m100000000#는 꽤 먼 거리니까 약을 잃어버리지 않도록 조심하라고...!"},
		["item"] = {["1"] = "아직 #r#p1002001##k씨를 만나보지 못하신 모양이군요. #b#m104000000##k의 빅토리아 호 근처에 있는 #p1002001# 아저씨라면 분명히 #t4031006#이 어디에 있는지 알고 있을텐데... 부탁드려요..."},
	},
	["ask"] = {"고맙네!!! 대신 이 약을 가져가게나. #b#m100000000##k의 #r#p1012101##k가 또 지병이 악화된 모양이더군. 이 약을 가져다 주면 조금은 나아질거야..."},
}
return nTable
end