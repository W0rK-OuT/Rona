return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032105,
	["lvmin"] = 21,
	["quest"] = {{["id"] = 2064, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1012106,
	["item"] = {{["id"] = 4000006, ["count"] = 60}, {["id"] = 4000017, ["count"] = 15}, {["id"] = 4031154, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031154, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 1200,
	["item"] = {
		{["id"] = 4000006, ["count"] = -60},
		{["id"] = 4031154, ["count"] = -1},
		{["id"] = 1002441, ["count"] = 1},
		{["id"] = 4000017, ["count"] = -15}
	},
}
nTable["info"] = {
	["name"] = "에스텔의 특별한 소스",
	["parent"] = "밍밍부인의 두번째 고민",
	["order"] = 3,
	["1"] = "엘리니아 근처에서 만난 에스텔에게서 무사히 특제소스를 받았다. #b돼지의 머리 15개, 옥토퍼스의 다리 60개#k와 함께 밍밍부인에게 가져가 봐야겠다.\n\n#i4000017##t4000017#  #b#c4000017##k / 15\n#i4000006##t4000006#  #b#c4000006##k / 60\n#i4031154##t4031154#  #b#c4031154##k / 1",
	["2"] = "축제준비로 정신없이 바쁜 밍밍부인에게 그녀가 부탁했던 요리 재료를 모두 구해서 가져다 주었다. 얼마 뒤에 있을 마을 축제가 기대되는걸?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "어머... 정말 예쁘게 잘 제련된 #b#t4021000##k이네요. 이 정도라면 어머니에게 아주 근사한 목걸이를 선물할 수 있겠는걸요? 부탁을 들어주셔서 고마워요. 자...여기 제 특제소스를 받으세요. 그리고 밍밍부인께 축제가 성공적이길 바란다고도 꼭 전해주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이제 돌아오세요? 많이 힘드셨죠? 저도 마을장식에 음식준비까지 정말 정신이 쏙 빠질 지경이에요. 어디보자... #b#t4000017# 15개, #t4000006# 60개, #t4031154# 1개#k 모두 잘 가져와 주셨네요. 역시 제가 사람 보는눈이 있었나봐요."},
	["yes"] = {["1"] = "이렇게 두 번이나 저를 도와주셔서 정말 감사해요. 마을을 장식할 장식물도 충분하고 요리 재료도 넉넉하니 이번 축제는 대성공일 것 같아요. 그때가 되면 꼭 다시 마을에 방문해주세요! 그럼 안녕히 가세요~"},
	["stop"] = {
		["npc"] = {["1"] = "제가 드린 특제소스를 어서 빨리 헤네시스 마을에 있는 #b#p1012106##k에게 전해주세요. 아마 목이 빠져라 기다리고 있을 거에요. 그럼 전 이 #t4021000#으로 목걸이를 만들러 가봐야 겠네요."},
		["item"] = {["1"] = "축제음식을 만들 재료가 필요해요. #b#t4000017# 15개, #t4000006# 60개, #t4031154# 1개#k만 구해와 주실수는 없을까요? #t4031154#는 엘리니아 근처 어딘가에 있는 #b#p1032105##k을 찾아가 보면 될거에요. 그럼 부탁드려요!"},
	},
}
return nTable
end