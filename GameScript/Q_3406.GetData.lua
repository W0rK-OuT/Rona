return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040003,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3405, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2050001,
	["item"] = {{["id"] = 4031095, ["count"] = 1}, {["id"] = 4031096, ["count"] = 1}, {["id"] = 4031097, ["count"] = 1}},
}
nTable["act0"] = {
	["exp"] = 1600,
	["item"] = {
		{["id"] = 4031095, ["count"] = 1},
		{["id"] = 4031096, ["count"] = 1},
		{["id"] = 4031097, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 3200,
	["item"] = {
		{["id"] = 4031095, ["count"] = -1},
		{["id"] = 4031096, ["count"] = -1},
		{["id"] = 4031097, ["count"] = -1},
		{["id"] = 2030012, ["count"] = 7}
	},
}
nTable["info"] = {
	["name"] = "로봇 부품 배달",
	["parent"] = "로봇 부품 조달",
	["order"] = 2,
	["1"] = "루디브리엄 장난감 공장에서 조교 챙을 만나 로봇을 만드는 데 쓰이는 부품 상자 3개를 전해 받았다. 이제 이것을 지구방위본부 사령실의 김박사에게 가지고 가면 되겠지?.",
	["2"] = "루디브리엄 장난감 공장에 있는 조교 챙으로부터 로봇을 만드는 데 쓰이는 부품 상자 3개를 받아 지구방위본부 사령실의 김박사에게 전해 주었다. 보답으로 루디브리엄으로 한 번에 이동할 수 있는 워프 캡슐을 받았는데… 꽤 유용하게 쓰이겠는걸?",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐음...? 오오~ 얘기는 모두 #b#p2050001##k님께 들었네. 루디브리엄과 지구방위본부를 이어주는 특수한 장치로 말이지. #p2050001#님이 부탁한 로봇의 부품 3개는 이렇게 미리 준비해 두었다네. 이걸 자네에게 줄테니 그 전에 아이템 기타창에 빈 칸이 3개 이상 있는지 확인하게."},
	["yes"] = {["1"] = "로봇 부품 상자 3개는 잘 받았겠지. 매우 민감한 기계들이 들어있기 때문에 까딱 잘못하면 부서지기 십상이라네. 지구방위본부까지 가는데 자네를 습격할지도 모르는 몬스터들도 문제지. 하지만 자네라면 #p2050001#님에게 잘 전해드릴거라 믿네. 그럼 조심히 잘 가게나."},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오... 바로 이것일세! 자네가 가져와 준 이 3개의 부품 상자는 신형 로봇의 핵심 장치를 만들기 위해서 꼭 필요한 것들이지. 극비 사항이라 더 자세한 것은 말해 줄 수 없지만 말일세... 아무튼 루디브리엄에 다녀오기 무척 힘들었을텐데 정말 수고했네. 자, 보답으로 #b#t2030012##k를 주겠네."},
	["yes"] = {["1"] = "방금 내가 준 #b#t2030012##k은 루디브리엄으로 한 번에 이동할 수 있는 특수장치라네. 하지만 다른 대륙에서 루디브리엄으로 갈 수는 없으니 주의하게나. 이렇게 몇 번이나 도와줘서 정말 고맙네. 자... 이제 부품들도 받았으니 어디 한 번 일을 시작해 볼까!"},
	["stop"] = {
		["npc"] = {["1"] = "내가 준 로봇 부품 상자 3개를 지구방위본부에 있는 #b#p2050001##k님께 전해 드리게나. 아마 이 부품이 오기만을 목이 빠져라 기다리고 있으실게야. 매우 민감한 기계들이 들어있기 때문에 까딱 잘못하면 부서지기 십상이니 조심히 다뤄 주게나. 그럼 어서 출발하게~!"},
		["item"] = {["1"] = "흐음... 자네 #b#p2040003##k을 만난 것 같긴 한데 이곳으로 오는 길에 부품 상자를 잃어버린 것 같군. 부품 상자는 3개가 모두 모이지 않으면 소용이 없다네. 다시 한 번 루디브리엄 장난감 공장에 있는 #p2040003#을 찾아가 부품을 받아서 나에게 가져와 주게나. 그럼 부탁하네!"},
	},
	["ask"] = {"흐음... 가는 도중에 부품 상자를 잃어버린 건가? 그러게 조심했어야지... 하지만 그 상자에는 #b#p2050001##k님이 개발한 자동귀환 장치가 부착되어 있었기 때문에 다시 이곳으로 돌아와 있다네. 다시 한 번 줄테니 이번에는 절대로 잃어버리지 말도록 하게나."},
}
return nTable
end