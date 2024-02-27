return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2110002,
	["lvmin"] = 95,
	["quest"] = {{["id"] = 6024, ["state"] = 2}},
	["job"] = {100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512, 2100, 2110, 2111, 2112, 2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 2110002,
	["item"] = {{["id"] = 4001184, ["count"] = 2}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031976, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 301400,
	["item"] = {
		{["id"] = 4001184, ["count"] = -2},
		{["id"] = 4250001, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4250101, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4250201, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4250301, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4250401, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4250501, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4250601, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4250701, ["count"] = 1, ["prop"] = 1}
	},
}
nTable["info"] = {
	["name"] = "루이씨의 열한 번째 주문",
	["0"] = "스탠의 동료이자 까칠하기로는 마가티아...아니 메이플월드에서 으뜸이라는 루이씨로부터 새로운 일거리가 있다는 연락이 왔다.",
	["1"] = "스탠의 동료 루이씨가 이번에는 아랫마을의 사이좋은 형제 칠성, 칠남이의 쇠스랑을 만들어 보라고 제안했다.\n\n#i4001184# #t4001184# #b#c4001184# / 2",
	["2"] = "아랫마을의 사이좋은 형제를 위해 튼튼하고 쓰기 편한 쇠스랑을 만들었다. 이제 까칠한 루이씨도 조금씩 누그러드는것 같기도 하다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "새로운 의뢰야. 이번에는 아랫마을...칠성이와 칠남이 형제인가. 농사 일에 사용 할 #b#t4001184# 2개#k를 의뢰했군. 이정도는 금방 끝낼 수 있겠지? 그렇지 않아?"},
	["yes"] = {["1"] = "농사기구이니까 튼튼해야 한다는 점을 명심해야 할거야. 조금만 썼는데 망가지기라도 한다면 우리 작업실의 명예에 먹칠을 하게 되는거니까 말이야."},
	["no"] = {["1"] = "스스로 무리라고 생각하다니 유감스럽군. 난 그렇게 생각안했는데. 스스로 포기하다니, 아이템 제작자의 자신감 결여. 그것만큼 보기 흉한 건 없어."},
}
nTable["say1"] = {
	["base"] = {["1"] = "튼튼한거 맞아? 미스릴 모루로 테스트 해본거야? 일단 상태는 괜찮은것 같군. 1년 안에 부러지지 않도록 기도나 해."},
	["stop"] = {
		["item"] = {["1"] = "달랑 2개야. 그런데 너무 오래 걸리는거 아냐? 달랑 #b#t4001184# 2개#k라고. 알겠어?"},
	},
	["ask"] = {"정말 어이가 없군. 끔찍해. 발주서 하나 제대로 못 챙기다니. 도대체 스탠은 무슨 생각인지 모르겠군. 정말 모르겠어."},
}
return nTable
end