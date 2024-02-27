return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2071004,
	["interval"] = 0,
	["quest"] = {{["id"] = 3621, ["state"] = 2}, {["id"] = 3616, ["state"] = 1}},
	["item"] = {{["id"] = 4031236}},
}
nTable["check1"] = {
	["npc"] = 2071004,
	["item"] = {{["id"] = 4000166, ["count"] = 5}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4000166, ["count"] = -5},
		{["id"] = 4031236, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "콩쥐와 팥쥐 동화책",
	["0"] = "콩쥐를 도와주고 나서 분명히 동화책을 받은 것 같은데 어디로 간거지? 다시 한번 콩쥐를 찾아가 볼까?",
	["1"] = "핼리오스탑 도서관에 있는 사서위즈에게서 #b#t4031236##k를 가져와 달라는 부탁을 받았다. 전에 콩쥐의 부탁을 들어주고 받았던 것 같은데 이상하게도 찾을 수가 없다. 콩쥐를 찾아가서 사정을 이야기하자 저녁 반찬거리로 필요한 #b#t4000166# 5개#k를 가지고 오면 동화책을 주겠다고 했다.\n\n#i4000166##t4000166# #b#c4000166##k/5",
	["2"] = "#t4031236#을 다시 얻기 위해 콩쥐가 부탁한 대로 #t4000166# 5개를 구해다주었다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "오랫만에 뵙습니다. 그동안 어떻게 지내셨어요? 잘 지내셨나요? 지난번에 여러가지로 절 도와주셔서 정말 감사했습니다. 오늘은 무슨 일로 오신거죠? 물건을 사러오셨나요?", ["2"] = "제가 드린 동화책을 잃어버리셨다구요? 저런 잘 간수하시지 그랬어요. 손님들께 들은 이야기로는 도서관 사서 위즈씨가 그 책을 찾고 있다고 하던데 그래서 절 찾아오신건가요?", ["3"] = "다행히도 저한테 여분의 책이 더 있답니다. 마지막으로 저를 한번만 더 도와주신다면 동화책을 드릴게요. 절 도와주시겠어요?"},
	["yes"] = {["1"] = "오늘 아침에 새어머니께서 새우찜을 드시고 싶다고 하셨는데 집안 일을 하다가 시간 가는 줄 몰랐답니다. 늦게서야 장을 보러 갔지만 이미 상인들이 떠나고 없더라구요. 저녁밥을 짓기 전까지 #b#t4000166# 5개#k를 구해다 주신다면 여분의 동화책을 드릴게요."},
	["no"] = {["1"] = "동화책이 필요하시다고 하지 않았나요? #b#p2040052##k씨가 흩어져버린 동화책을 회수하고 있다는 소문이 있던데... 위즈씨를 도와드리려고 동화책을 찾고계신거 아니었나요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "때마침 돌아오셨네요. 그렇지 않아도 왜 이렇게 안 오시나 궁금해하던 참이었어요. #b#t4000166##k은 구해오셨나요?"},
	["yes"] = {["1"] = "정말 재주가 좋으시네요. 어떻게 구하신거에요? 게다가 아주 싱싱하네요. 어서 동화책을 가지고 위즈씨에게 가보세요."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000166##k은 아직 못구하셨나보네요? 상인들이 모두 문을 닫아서 구하기가 쉽지 않을거에요. 딱 #b5마리#k만 있으면 될텐데..."},
	},
}
return nTable
end