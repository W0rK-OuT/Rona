return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032101,
	["lvmin"] = 35,
	["quest"] = {{["id"] = 2026, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1032101,
	["item"] = {{["id"] = 4000031, ["count"] = 600}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 20000,
	["pop"] = 2,
	["item"] = {
		{["id"] = 4000031, ["count"] = -600},
		{["id"] = 2040801, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040802, ["count"] = 1, ["prop"] = 1}
	},
}
nTable["info"] = {
	["name"] = "저주받은 인형 600개 모으기",
	["parent"] = "요정 로웬과 저주받은 인형",
	["order"] = 4,
	["1"] = "로웬은 다시 한번 #b저주받은 인형 600개#k를 모아와 달라고 부탁했다. 600개라... 장난이 아닌걸?\n\n#i4000031# #t4000031# #b#c4000031##k/600",
	["2"] = "엘리니아 근처 숲에 있는 좀비 루팡을 쓰러뜨리고 약속대로 #b저주받은 인형 600개#k를 모아다 주었다. 그리고 그 보답으로 장갑 주문서를 받았다. 이걸로 정말 숲이 예전으로 돌아갈 수 있게 되는 것일까?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "여행자님... 또 오셨군요... 일전에 주신 인형은 어둠속 깊은 곳에 영원이 봉인해 두었답니다. 하지만 아직도 좀비가 된 #o3210800#들이 늘어가고 있다는 소식입니다... 죄송하지만 #b#t4000031##k을 600개 모아와 주시지 않겠습니까?"},
	["yes"] = {["1"] = "정말 감사합니다. #o4230101#들은 #m101000000#에서 가까운 숲인 원숭이 숲에서 많이 목격되었습니다. 부디 #b#t4000031##k을 #b600 개#k 모아와 주세요. 사례는 충분히 드리도록 하겠습니다."},
	["no"] = {["1"] = "그렇군요... 당신이라면 믿고 맡길 수 있는 일이라고 생각했는데... 정 바쁘시다면 할 수 없겠죠. 하지만 나중에 마음에 바뀌게 된다면 꼭 다시 저를 찾아와 주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이것은...! #t4000031# 600개를 모아와 주셨군요. 다행입니다. 이걸로 #o4230101#의 숫자가 조금은 줄어들 지도 모르겠습니다. 하지만 이 인형은 스스로 분신을 끊임없이 만들어 내기 때문에 아직 안심할 수는 없군요.", ["2"] = "아참... 제 부탁을 들어주신 답례를 드리는 것을 잊었군요. 작지만 저의 성의입니다. 그리고 저희 요정들의 힘으로 당신의 이름을 이 세계 곳곳에 퍼지도록 해 드리겠습니다. 당신이라면... 영웅이 될 것만도 같군요."},
	["yes"] = {["1"] = "당신의 인기도를 조금 올려드렸습니다. 그리고 예전 #p1032001#님 밑에서 배운 실력으로 만든 주문서도 드렸습니다. 부디 유용하게 사용하셨으면 좋겠군요. 그럼 이만..."},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4000031##k을 600개 모두 모으지 못한 모양이군요. 이러고 있는 동안에도 #t4000031#이 점점 더 자신의 분신을 만들어 늘어나고 있을 것입니다. 부디 빨리 인형을 모아와 주세요."},
	},
}
return nTable
end