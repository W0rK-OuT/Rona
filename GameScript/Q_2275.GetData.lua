return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052122,
	["lvmin"] = 35,
	["lvmax"] = 50,
	["quest"] = {{["id"] = 2274, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052122,
	["item"] = {{["id"] = 4000542, ["count"] = 50}, {["id"] = 4000543, ["count"] = 50}, {["id"] = 4000544, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 15300,
	["item"] = {
		{["id"] = 4000542, ["count"] = -50},
		{["id"] = 4000543, ["count"] = -50},
		{["id"] = 4000544, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "티나의 제안",
	["area"] = 30,
	["0"] = "메이크업 아티스트로 섭외하려면 부탁을 들어줘야 한다고? #b티나#k의 부탁을 들어주고, 혁이의 메이크업을 부탁하자.",
	["1"] = "샵 오픈 기념으로  고객들에게 선물할 키홀더가 필요하다고? 인형 뽑기 기계들에게서 키홀더와 인형을 모아다 주자.",
	["2"] = "드디어 메이크업 아티스트를 섭외했다. #b라나#k에게 돌아가 소식을 전해주자.",
	["demandSummary"] = "#i4000542:# #t4000542:# #c4000542# / 50\r\n#i4000543:# #t4000543:# #c4000543# / 50\r\n#i4000544:# #t4000544:# #c4000544# / 20\r\n",
	["rewardSummary"] = "경험치 15,300",
}
nTable["say0"] = {
	["base"] = {["1"] = "#b#h0##k. 당신은 혁이 메이크업을 부탁하려 왔던 그 사람이죠? 저를 다시 찾아 온걸 보니, 저의 제안을 받아 들이려는 건가 봐요?"},
	["yes"] = {["1"] = "호호호 좋아요. 저도 샵을 오픈한지 얼마 안되어서, 가게에 찾아오는 손님들에게 나눠줄 선물이 필요해요. 예쁜 열쇠고리를 선물하고 싶은데, 인형뽑기 기계에서 #b예티 키홀더 50개, 주니어 페페 키홀더 50개, 그리고 특별한 손님을 위한 주황버섯 인형 20개#k를 구해다 주세요. 인형뽑기 기계들은 커닝 스퀘어 3~4층에 얼마든지 있을거에요."},
	["no"] = {["1"] = "아니라면 왜 날 다시 찾아온거죠?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "제가 부탁한 것들이 준비 된건가요? 그렇다면 제게 건네 주세요."},
	["yes"] = {["1"] = "틀림 없군요. 좋아요. 약속대로 혁이의 메이크업은 제가 책임 지겠어요. 대박기획 대표 라나님께 가서 전하세요. 제 안부도 함께 전해주면 고맙겠어요."},
	["stop"] = {
		["item"] = {["1"] = "완료 조건 미달 아이템 손님들에게 선물할 #b예티 키홀더 50개, 주니어 페페 키홀더 50개, 그리고 특별한 손님을 위한 주황버섯 인형 20개#k를 구해다 주세요. #r인형뽑기 기계#k들은 커닝 스퀘어 3~4층에 얼마든지 있을거에요.\r\n"},
	},
}
return nTable
end