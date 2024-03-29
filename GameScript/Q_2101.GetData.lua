return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012108,
	["lvmin"] = 35,
	["quest"] = {{["id"] = 2100, ["state"] = 1}, {["id"] = 2102}},
}
nTable["check1"] = {
	["npc"] = 1012108,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 200,
}
nTable["info"] = {
	["name"] = "하늘길을 따라서 아랫마을로",
	["0"] = "하늘길을 통해서 아랫마을에 가보는건 어떨까? ",
	["1"] = "카밀라의 부탁으로 하늘길을 통해 아랫마을에 살고 있다는 카밀라의 펜팔친구 콩쥐를 찾아가기로 했다. 카밀라가 여행에 필요한 몇 가지를 챙겨준다고 하는데 무엇을 주려는 걸까?",
	["2"] = "카밀라의 부탁으로 하늘길을 통해 아랫마을에 살고 있다는 카밀라의 펜팔친구 콩쥐를 찾아가기로 했다. 일단 #b엘리니아#k에서 #b오르비스#k로 간 다음 #b루디브리엄#k으로 가면 되는건가? 루디브리엄에 도착하면 #b핼리오스탑#k을 통해 내려가라고 한 것 같은데 정말 멀군.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "여행을 떠날 준비는 되셨나요?"},
	["yes"] = {["1"] = "그럼 하늘길을 따라서 가는 방법에 대해 설명을 드릴게요. 우선 빅토리아 아일랜드에서 비행선을 탈 수 있는 #b엘리니아#k로 가세요. 엘리니아에서는 15분 간격으로 오시리아 대륙에 있는 #b오르비스#k로 가는 배를 탈 수 있답니다. 오르비스에는 커다란 정거장이 있는데 그 곳에서 #b루디브리엄#k행 비행선으로 갈아타세요. 장난감성 루디브리엄에는 커다란 탑이 두 개 있는데 그 중 #b핼리오스탑#k을 따라서 쭉 내려가면 아랫마을에 도착할 수 있어요.", ["2"] = "다시 말을 걸어주시면 여행에 필요한 물건을 챙겨드릴게요."},
	["no"] = {["1"] = "여행 준비가 끝나면 와주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "아, 비행선 티켓을 구해드리려고 했는데... 지금은 무료로 탈 수 있다고 하네요. 그럼 좋은 여행 되세요."},
}
return nTable
end