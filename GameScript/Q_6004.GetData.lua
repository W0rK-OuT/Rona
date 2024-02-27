return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060005,
	["interval"] = 0,
	["quest"] = {{["id"] = 6002, ["state"] = 2}},
	["item"] = {{["id"] = 1912000}},
}
nTable["check1"] = {
	["npc"] = 2060005,
	["endmeso"] = 5000000,
	["item"] = {{["id"] = 4000030, ["count"] = 200}, {["id"] = 4000055, ["count"] = 200}, {["id"] = 4000171, ["count"] = 200}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
	["money"] = -5000000,
	["item"] = {
		{["id"] = 4000171, ["count"] = -200},
		{["id"] = 4000030, ["count"] = -200},
		{["id"] = 4000055, ["count"] = -200},
		{["id"] = 1912000, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "잃어버린 안장",
	["0"] = "#b#p2060005##k에게 받은 #t1912000#을 잃어버리고 말았다. 이런, 어떻게 하지? #p2060005#에게 가보자. ",
	["1"] = "몬스터 라이딩에 쓰이는 #t1912000#은 특별한 재료로 만들어 진다는 #p2060005#. 그것을 만들기 위해서는 #b#t4000171# 200개, #t4000030# 200개, #t4000055# 200개#k가 필요하다고 한다. 거기에 #p2060005#는 연구 지원금 #b500만 메소#k까지 필요하다고 하는데… 아무래도 자신이 준 걸 잃어버려서 화가 난 걸지도 모르겠다. \n\n#i4000171##t4000171# #b#c4000171#/200#k\n#i4000030##t4000030# #b#c4000030#/200#k\n#i4000055##t4000055# #b#c4000055#/200#k\n",
	["2"] = "#p2060005#에게 #t1912000#을 받았다. 이제 이걸로 다시 몬스터 라이딩을 할 수 있겠지?",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "어라? 전에 몬스터 라이딩 스킬을 익히신 분 아니세요? 그런데 왜 몬스터는 안 타고… 여긴 어쩐 일이시죠? 네에? #t1912000#을 잃어버리셨다고요?", ["2"] = "이런! 몬스터와의 공존을 실현시킬 분이라고 생각해서 #t1912000#을 드렸는데, 그것을 잃어버리다니… 휴우. 하는 수 없죠. 다시 #b#t1912000##k을 만들어 드리도록 할게요."},
	["yes"] = {["1"] = "하지만, 이번에는 #t1912000#을 만드는 재료를 모두 구해 오셔야 해요. 재료는 #b#t4000171# 200개, #t4000030# 200개, #t4000055# 200개#k에요. 많다고요? 물론 많지요. 몬스터의 거친 등에 얹힐 물건이니까요! ", ["2"] = "아, 이번에는 재료만으로는 안 돼요! #t1912000#을 만드는 동안 연구를 못 하게 되니, 그 만큼의 보상도 해 주셔야지요. 연구 지원금 #b500만 메소#k도 가죽과 함께 가져 오세요. 과하다고 하셔도 소용 없어요. 이 정도는 해야 다시는 #t1912000#을 안 잃어버리실 테니까요! "},
	["no"] = {["1"] = "싫으신가요? 그렇다면 하는 수 없죠. 당신께 몬스터 라이딩 스킬을 가르쳐 드린 것이 조금 후회되네요"},
}
nTable["say1"] = {
	["base"] = {["1"] = "모든 재료를 가져 오셨군요! #t1912000#을 만들기 위한 준비는 모두 해 놓았으니, 빨리 재료를 주세요. 자아, 그럼 이렇게 가죽을 잘라 이어 붙이고 이 부분을 꿰매면…", ["2"] = "자, #b#t1912000##k이 완성되었습니다. 몬스터의 거친 털로부터 탄 사람을 완벽하게 보호하는 특별한 #t1912000#이지요."},
	["yes"] = {["1"] = "다음에는 절대 잃어버리지 마세요. 만들기 힘든 물건이라고요!"},
	["stop"] = {
		["item"] = {["1"] = "아직 재료를 전부 모으지 못하신 모양이네요. #b#t4000171# 200개, #t4000030# 200개, #t4000055# 200개#kl라니까요. 거기에 #b500만 메소#k까지. 휴우. 말해 놓고 보니 무척 힘드시겠어요. 그러니까 선물 받은 물건은 소중히 하셔야죠!"},
	},
}
return nTable
end