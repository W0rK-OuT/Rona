return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060000,
	["lvmin"] = 100,
	["quest"] = {{["id"] = 21607, ["state"] = 1}},
	["job"] = {2000, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 2060000,
	["item"] = {{["id"] = 4000182, ["count"] = 200}, {["id"] = 4000183, ["count"] = 200}, {["id"] = 4000184, ["count"] = 200}, {["id"] = 4032333, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4000182, ["count"] = -200},
		{["id"] = 4000183, ["count"] = -200},
		{["id"] = 4000184, ["count"] = -200},
		{["id"] = 4032333, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "나누크의 조언",
	["area"] = 6,
	["0"] = "사춘기가 된 #t1902015#를 위해 #b#m230010201##k의 #b#p2060000##k를 찾아가 조언을 들어 보자. ",
	["1"] = "#p2060000#는 사춘기 늑대에게는 영양이 가장 중요하다며 사춘기 늑대를 위한 영양식을 만들어 보라고 말했다. 재료를 구해 준다면 #p2060000#가 직접 만들어 주겠다는데...\r\n\r\n#i4000182# #t4000182# #b#c4000182# / 200#k\r\n#i4000183# #t4000183# #b#c4000183# / 200#k\r\n#i4000184# #t4000184# #b#c4000184# / 200#k\r\n#i4032333# #t4032333# #b#c4032333# / 1#k",
	["2"] = "모든 재료를 구해 왔다. #p2060000#는 재료들을 이용해 사춘기 늑대용 영양식을 만들어 먹여 주었다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "앗, 전에 #t4032332#을 만들던 분이시군요? 아기 늑대는 잘 자라고 있나요? 영양식이 아기 늑대에게 도움이 되었으면 좋았을 텐데요... 그런데 여긴 어쩐 일로 다시 오신 건가요?\n#b#L0#(류호를 보여주며 늑대의 사춘기에 대해 이야기했다.)#l\n#k", ["2"] = "아하, 이 늑대... 이름이 #t1902015#랬나요? #t1902015#도 벌써 사춘기가 올 때가 되었군요. 그럼 이번에는 #b사춘기 늑대용 영양식#k을 준비해야겠군요? 사춘기 늑대는 성장을 위해 더 많은 영양을 필요로 하거든요. "},
	["yes"] = {["1"] = "재료만 구해 오시면 이번에도 사춘기 늑대를 위한 영양식을 만들어 드릴게요! 재료는 석회가루가 든 #b#t4000182# 200개#k, 먹물이 든 #b#t4000183# 200개#k, #b#t4000184# 200개#k, 그리고 #p2060005#씨가 판매하는 #b#t4032333##k예요. 좀 많죠? "},
	["no"] = {["1"] = "예전에 사춘기를 제대로 돌봐주지 않은 허스키가 한 마리 있었는데, 썰매끈을 물어뜯고 썰매를 뒤집고 먹이를 혼자 다 먹어버리고... 아무튼 골칫거리였답니다. 늑대도 그럴지도 몰라요! 다시 한 번 생각해 주세요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "와아, 모든 재료를 다 구해 오셨군요? 그럼 잠시만 기다려 주세요. 사춘기 늑대용 영양식을 만들어 드릴게요!", ["2"] = "자, 여기 몸에도 좋고 맛도 좋은, 영양가 풍부한 사춘기 늑대용 영양식이에요! 바로 #t1902015#에게 먹여볼까요?"},
	["yes"] = {["1"] = "오오~ 꽤 맛이 있는 모양이네요. #t1902015#도 만족한 눈치인 걸 보니... 후후. 그럼 계속해서 성장 중인 아기 늑대를 잘 돌보시길 바래요."},
	["stop"] = {
		["item"] = {["1"] = "아직 사춘기 늑대용 영양식 재료를 구하지 못하셨네요. #b#t4000182# 200개#k, #b#t4000183# 200개#k, #b#t4000184# 200개#k, #b#t4032333# 1개#k예요. 앞의 세 개는 #r심해에 사는 몬스터#k들에게서 구할 수 있고, 영양제는 #b#p2060005#씨#k가 판매하고 있어요."},
	},
}
return nTable
end