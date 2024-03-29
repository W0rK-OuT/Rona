return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1103004,
	["lvmin"] = 26,
	["quest"] = {{["id"] = 20722, ["state"] = 2}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1103004,
	["item"] = {{["id"] = 4032147, ["count"] = 1}},
	["mob"] = {
		[1] = {["id"] = 2230111, ["count"] = 200}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 6500,
	["item"] = {
		{["id"] = 4032147, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "스톤 마스크의 이상",
	["0"] = "#m102000000# 지역 정보원 #b#p1103004##k에게 다음 임무에 대해 할 말이 있다는데...",
	["1"] = "#p1103004#는 이번에는 탐지기의 반응이 #b#m101030103##k에서 나타나고 있다며 그곳으로 가서 #r#o2230111# 200마리#k를 퇴치하고 #b#t4032147##k을 찾아다 달라고 말했다. \n\n#o2230111##r #a207231##k \n#i4032147# #t4032147# #b#c4032147# / 1#k",
	["2"] = "#o2230111#를 모두 쓰러뜨렸다. #p1103004#는 다시 탐지기를 들여다 보기 시작하는데... ",
	["area"] = 15,
}
nTable["say0"] = {
	["base"] = {["1"] = "또다시 탐지기에 반응이 나타나고 있어요. 전과 그리 멀지 않은 위치인데... 이번에는 #m101030103#이에요! 아마도 인형사는 #o2230111#를 조종하려 하고 있는 모양이에요! 어서 막아야만 해요!"},
	["yes"] = {["1"] = "#b#m101030103##k으로 가서 #r#o2230111##k를 ...1000... 아니, 500... ....아니 #r200마리#k만 물리치고 #b#t4032147##k을 찾아다 주세요! 그럼 기다릴게요!"},
	["no"] = {["1"] = "네? 잘못 누르신 거겠죠? 임무를 수행하고 싶을 때 누르는 버튼은 수락하기랍니다. 다시 말을 걸어서 눌러 주세요. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o2230111#를 퇴치하고 인형을 찾아 오셨군요! 아, 정말 다행이다. 두 번이나 성공한 걸 보면 탐지기는 문제 없어... 네? 무슨 말이냐고요?"},
	["yes"] = {["1"] = "사실... 이 탐지기는 완전한 것이 아니에요. 아직 시험제작 중인 걸 급히 가져온 거예요. 오작동 할 가능성이 높아서, 당장 투입하긴 어렵고 해서... 아무래도 인형사가 나타날 가능성이 가장 높은 #m102000000#에서 테스트를 해보기로 한 거였어요.", ["2"] = "다행히 테스트는 성공이에요. #p1101002#님의 예상대로 인형사는 #m102000000# 지역에 나타났고, 탐지기는 그것을 제대로 탐지해 냈으니까요. 혹시 오해하고 전혀 다른 몬스터를 공격한 게 아닐까 걱정했는데 아니어서 정말 다행이에요."},
	["stop"] = {
		["item"] = {["1"] = "아직 #r#o2230111# 200마리#k를 쓰러뜨리고 #b#t4032147##k을 찾지 못하신 것 같네요... 탐지기의 반응은 #b#m101030103##k에서 일어나고 있어요! 그곳으로 가서 임무를 완수해 주세요!"},
		["mob"] = {["1"] = "아직 #r#o2230111# 200마리#k를 쓰러뜨리고 #b#t4032147##k을 찾지 못하신 것 같네요... 탐지기의 반응은 #b#m101030103##k에서 일어나고 있어요! 그곳으로 가서 임무를 완수해 주세요!"},
	},
}
return nTable
end