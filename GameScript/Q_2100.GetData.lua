return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012108,
	["lvmin"] = 35,
	["quest"] = {{["id"] = 2099, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2071004,
	["item"] = {{["id"] = 4031240, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031240, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 800,
	["item"] = {
		{["id"] = 4031240, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "아랫마을로 가는 두 가지 방법",
	["parent"] = "아랫마을을 찾아서…",
	["order"] = 2,
	["1"] = "카밀라에게 보내 온 펜팔 친구의 편지에는 앞으로는 편지를 할 수 없을 것 같다는 내용이 쓰여있었다. 카밀라는 친구한테 무슨 일이 생긴 것 같다면서 친구가 살고 있는 마을로 가서 친구에 대한 소식을 알아봐 달라고 부탁했다.",
	["2"] = "아랫마을에서 카밀라의 펜팔친구인 콩쥐를 만났다. 카밀라의 답장을 전해주자. 뛸듯이 기뻐했다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "아 이런... 나쁜 소식이에요. 친구가 이제 앞으로는 편지를 할 수 없게 되었대요. 무슨 일일까요? 혹시 나쁜 일이 생긴걸까요? 편지에는 이유를 쓰지 않았어요.. 너무 걱정이 돼요. 저기.. 혹시 먼 곳으로의 여행을 좋아하세요? 친구에게 무슨 사정이 생겼는지 알고 싶어서요. 친구가 사는 마을까지 다녀와 주실 수 있나요?"},
	["yes"] = {["1"] = "고맙습니다. 제 답장을 콩쥐에게 전해주세요. #b콩쥐#k는 오시리아대륙의 루디브리엄성 밑에 있는 #b아랫마을#k에 살고 있답니다. 아랫마을로 가려면 #b하늘길을 통해 가는 방법#k과 #b바닷길을 통해 가는 방법#k이 있답니다. 어떤 방법으로 가실건지 맘을 정하신 후 말을 걸어주시면 두 가지 방법에 대해 자세히 설명해드릴게요."},
	["no"] = {["1"] = "하긴 너무 먼 곳이긴 하죠.."},
}
nTable["say1"] = {
	["base"] = {["1"] = "무슨 일이시죠? 제가 지금 좀 바쁜데.. 할 일이 많거든요. 저한테 하실 말씀이라도 있나요? 손에 들고 계신건 뭐죠?"},
	["yes"] = {["1"] = "이건 카밀라의 편지잖아요! 아 그럼 빅토리아 아일랜드에서 여기까지 오신건가요? 카밀라가 제 소식을 궁금해 한다구요? 저도 사실 계속 편지를 쓰고 싶었는데 새 어머니가 오신 뒤로 집안일이 많아져서 도저히 짬을 낼 수가 없었답니다. 이렇게 편지를 전해주셔서 감사해요."},
	["stop"] = {
		["item"] = {["1"] = "물건을 사려고 하시는 거라면 새어머니께 말을 걸어보세요. 전 지금 아주 바쁘답니다. 해야 할 일이 산더미처럼 많거든요."},
	},
	["ask"] = {"콩쥐에게 전해줄 답장을 잃어버리셨다구요? 어휴..제가 다시 써드릴게요.", "여기요. 이번에는 꼭 콩쥐에게 전해주셔야해요."},
}
return nTable
end