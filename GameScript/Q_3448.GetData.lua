return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041027,
	["lvmin"] = 60,
}
nTable["check1"] = {
	["npc"] = 2041027,
	["item"] = {{["id"] = 4031189, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2700,
	["item"] = {
		{["id"] = 4031189, ["count"] = -1},
		{["id"] = 4004000, ["count"] = 1, ["prop"] = 10},
		{["id"] = 4004001, ["count"] = 1, ["prop"] = 10},
		{["id"] = 4004002, ["count"] = 1, ["prop"] = 10},
		{["id"] = 4011007, ["count"] = 1, ["prop"] = 10},
		{["id"] = 4011006, ["count"] = 1, ["prop"] = 10},
		{["id"] = 4011005, ["count"] = 1, ["prop"] = 10},
		{["id"] = 4080006, ["count"] = 1, ["prop"] = 10},
		{["id"] = 4080010, ["count"] = 1, ["prop"] = 10},
		{["id"] = 4004004, ["count"] = 1, ["prop"] = 5},
		{["id"] = 4004003, ["count"] = 1, ["prop"] = 5},
		{["id"] = 4080011, ["count"] = 1, ["prop"] = 10}
	},
}
nTable["info"] = {
	["name"] = "수집광 매이션",
	["parent"] = "수집광 매이션",
	["order"] = 1,
	["0"] = "루디브리엄의 빈집이었던 곳에 새로이 입주한 매이션을 만나러 가보자.",
	["1"] = "상당히 어색한 말투의 수집광 매이션은 오늘도 무언가를 수집하기 위해 열성이다. 그는 특히 반짝이는 물건을 좋아하는데 뒤틀린 시간의 길에서 오로라 구슬을 보았다고 한다. 누가 갖고 있는 걸까? \n\n#i4031189##t4031189# #b#c4031189#/1#k",
	["2"] = "뒤틀린 시간의 길에 있는 레이지버피를 퇴치하고 오로라 구슬을 획득하여 매이션에게 가져다 주었다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "신비한 빛을 내는 구슬... 분명히 보았다. 그 신비한 오로라 빛 구슬을!! 수집하고 싶다. 수집하고 싶어. 가져다 줘 그 구슬을.."},
	["yes"] = {["1"] = "정말 내게 가져다 줄 것인가? 얼마 전 나의 수집을 위해 #b뒤틀린 시간의 길#k이라는 곳에 갔다가 보았다. 바닥에 떨어져 있었는데!", ["2"] = "그 오로라 빛 구슬에 감탄하며 다가가는 순간 다른 녀석이 갖고 가버린거다! 분통하다. 분통해. 그 것이 갖고 싶어. \n\n#i4031189# #t4031189# #b1개#k"},
	["no"] = {["1"] = "오로라 구슬을 내게 가져다 주면 나의 수집품 중 하나를 주겠다. 반짝이는 그 구슬을 내게 가져다 줘."},
}
nTable["say1"] = {
	["base"] = {["1"] = "그 오묘한 빛에 빠져버릴 지도 모른다. 갖고 온 건가? 어서 내게 보여줘."},
	["yes"] = {["1"] = "이 것이 맞아. 그래 이 아름다운 색. 나의 수집 목록에 넣기에 손색이 없는 훌륭한 구슬이다. 약속한 나의 수집품 중 하나를 준다."},
	["stop"] = {
		["item"] = {["1"] = "아니다. 당신은 내가 원하는 구슬을 갖고 있지 않다!!!"},
	},
}
return nTable
end