return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 20001,
	["lvmax"] = 10,
	["quest"] = {{["id"] = 1044, ["state"] = 2}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 20001,
	["item"] = {{["id"] = 4000001, ["count"] = 1}},
	["mob"] = {
		[1] = {["id"] = 1210102, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 700,
	["item"] = {
		{["id"] = 4000001, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "바리의 테스트",
	["0"] = "#b모험가의 수련장 입구#k에서 #b바리#k라는 청년이 당신을 기다리고 했다는데...",
	["1"] = "바리는 마이에게 당신의 실력을 테스트 해보라는 부탁을 받았다며, 메이플 아일랜드에서 가장 강한 몬스터인 #r주황버섯#k을 퇴치하고 #b주황버섯의 갓 1개#k를 가져오라고 말했다. \n\n주황버섯 #r#a10451##k \n#i4000001# #t4000001# #b#c4000001# #k/1",
	["2"] = "주황버섯을 퇴치하고 주황버섯의 갓을 가져와 바리에게 말해 주었다. 이로서 마이에게 모든 수련을 받았다. 이제 빅토리아 아일랜드로 갈 준비가 거의 다 되어 가는 것 같다.",
	["area"] = 20,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신이 바로 #h0#님이군요. 기다리고 있었습니다요. 네? 무슨 일이냐고요? 마이에게 당신을 테스트 해달라는 부탁을 받았거든요. 이 길만 지나면 사우스페리니, 배를 타고 빅토리아 아일랜드로 가버리기 전에 테스트 해달라고 하더구만요.", ["2"] = "물론 테스트로 실력을 점검해 보지 않더라도 빅토리아 아일랜드에 가서 잘 적응할 자신이 있으시면 그냥 가셔도 상관은 없습니다요... 테스트를 받으시겠습니까요?"},
	["yes"] = {["1"] = "테스트는 #r주황버섯#k 사냥입니다요. 이 메이플 아일랜드에서 가장 강한 녀석이지요. 조심해서 #r주황버섯 1마리#k를 사냥하시고 그 증거로 #b주황버섯의 갓 1개#k를 가져오시면 됩니다요. 그럼 어서 테스트 시작하십시오.  "},
	["no"] = {["1"] = "흠... 뭐, 자신 있으시면 억지로 시킬 수야 없지요. 마이에게도 그렇게 전하겠습니다요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "호오! 주황버섯 1마리를 퇴치하고 주황버섯의 갓 1개를 가져오셨구만요! 정말 대단합니다요! 마이가 칭찬을 하던 이유가 있었구만요."},
	["yes"] = {["1"] = "이걸로 마이의 테스트는 모두 통과하셨습니다요. 전직할 준비만 완전히 갖춘다면, 조만간에 빅토리아 아일랜드로 가셔도 괜찮을 것 같습니다요. ", ["2"] = "빅토리아 아일랜드로 가기 전에 그 곳에 대한 정보를 얻고 싶으시다면 #b사우스페리#k에 있는 #b빅스#k를 찾아가십시오. 모험을 떠나겠다며 빅토리아 아일랜드에 관한 정보를 잔뜩 모았으니, 당신께 도움을 줄 수 있을 겁니다요."},
	["stop"] = {
		["item"] = {["1"] = "아직 #r주황버섯 1마리#k를 퇴치하고 #b주황버섯의 갓 1개#k를 가져오지 못하셨구만요. 이것까지 해내야만 마이의 수련을 모두 마친 거라고 할 수 있습니다요."},
		["mob"] = {["1"] = "아직 #r주황버섯 1마리#k를 퇴치하고 #b주황버섯의 갓 1개#k를 가져오지 못하셨구만요. 이것까지 해내야만 마이의 수련을 모두 마친 거라고 할 수 있습니다요."},
	},
}
return nTable
end