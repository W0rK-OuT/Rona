return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1010100,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 2044, ["state"] = 2}},
	["job"] = {400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 1400, 1410, 1411, 1412},
}
nTable["check1"] = {
	["npc"] = 1010100,
	["item"] = {{["id"] = 4021008, ["count"] = 1}, {["id"] = 4000028, ["count"] = 30}, {["id"] = 4001005, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 5000,
	["nextQuest"] = 2046,
	["item"] = {
		{["id"] = 4021008, ["count"] = -1},
		{["id"] = 4001005, ["count"] = -1},
		{["id"] = 4000028, ["count"] = -30}
	},
}
nTable["info"] = {
	["name"] = "피아가 빌려간 물건",
	["parent"] = "피아의 친구를 위한 선물",
	["order"] = 2,
	["1"] = "헤네시스의 리나에게 찾아갔더니 그 망토는 피아가 자신에게 빌려간 물건을 갚지 않아 가져간 것이었다는 말을 했다. 피아가 자신에게 빌려간 물건을 대신 갚아주면 망토를 돌려주겠다는데... #b흑수정 1개, 고대의 주문서 1개, 타우로마시스의 뿔 30개#k가 피아가 빌려갔던 물건이라는데...\n\n#i4021008##t4021008# #b#c4021008##k/1\n#i4000028##t4000028# #b#c4000028##k/30\n#i4001005##t4001005# #b#c4001005##k/1",
	["2"] = "피아를 대신해서 리나에게 망토를 받으러 갔지만, 리나는 오히려 피아가 자신에게서 빌려간 물건을 갚지않아서 맡아두고 있는거라면서 빌려간 물건을 가져오면 망토를 돌려주겠다고 했다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요~ 오늘도 날씨가 너무 좋네요. 네? #p1012102#에게 빌려간 #b#t4031043##k를 받으러 오셨다구요~? 흐음... 그거 곤란한 걸요... 실은 빌린게 아니랍니다. #p1012102#가 소중한 제 물건들을 먼저 빌려가 놓고 돌려주지 않아서 제가 대신 이 망토를 받아온 거거든요. 그러니까 이 망토는 절대로 드릴 수 없어요~!", ["2"] = "흐음... 꼭 그렇게 필요한 물건이라면 방법이 없는건 아니죠. #p1012102#가 저에게 빌려갔다가 돌려주지 않고 있는 물건들을 대신 찾아와 주신다면 이 #b#t4031043##k를 드릴수도 있어요. 어떠세요? 대신 갚고 가져가시겠어요? 물론 #p1012102#가 빌려간 물건은 엄청... 귀한 것들 뿐이라구요~"},
	["yes"] = {["1"] = "호오... 정말이신가요? 당신은 #p1012102#와 꽤 친한 사이인가 보죠? 뭐... 아무튼 저야 물건을 돌려받는 셈이니 거리낄게 없겠죠. 빌려간 물건은 #b#t4021008# 1개, #t4001005# 1개, #t4000028# 30개#k에요. 얼마나 힘들게 모은건데 그걸 떼어먹다니! 아무튼 저것만 모아와 주신다면 기꺼이 #b#t4031043##k를 드리겠어요."},
	["no"] = {["1"] = "그렇군요. 사실 모르는 사람 대신 뭔가를 갚아주기는 힘들죠. 아무튼 #p1012102#에게 망토를 돌려받고 싶다면 먼저 저한테 빌려간 물건을 갚으라고 전해주세요."},
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "아직 제가 말씀드린 물건을 모두 모으지 못하신 것 같네요. #b#t4021008# 1개, #t4001005# 1개, #t4000028# 30개#k를 가져오시면 #p1012102#의 #b#t4031043##k를 돌려 드리겠어요. 그럼 힘내세요~!"},
	},
}
return nTable
end