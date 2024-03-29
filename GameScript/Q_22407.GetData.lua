return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060005,
	["lvmin"] = 80,
	["quest"] = {{["id"] = 22406, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2001},
}
nTable["check1"] = {
	["npc"] = 2060005,
	["item"] = {{["id"] = 4032475, ["count"] = 10}, {["id"] = 4032476, ["count"] = 2}, {["id"] = 4032477, ["count"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -30000000,
	["item"] = {
		{["id"] = 4032475, ["count"] = -10},
		{["id"] = 4032476, ["count"] = -2},
		{["id"] = 4032477, ["count"] = -2},
		{["id"] = 1912034, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "더 큰 안장 만들기",
	["area"] = 7,
	["0"] = "#b#m230000000##k의 #b#p2060005##k에게 좀 더 큰 안장 만들기를 의뢰하자.",
	["1"] = "#p2060005#는 #p1013000#의 성장기에 맞춰 좀 더 신축성이 있는 특별한 안장을 만들어 주겠다고 한다. 대신 재료 중에 좀 더 구하기 어려운 게 있는 것 같다.\r\n\r\n#m211000000#에서 #b#t4032475##k을, 아쿠아로드 깊은 바다에 있는 난파선의 보물상자에서 #b#t4032476##k을, #m251000000#의 황선장에게서 #m251000000# 특산품인 #b#t4032477##k를 구해 오자.\r\n\r\n#i4032475# #t4032475# #b#c4032475# / 10#k\r\n#i4032476# #t4032476# #b#c4032476# / 2#k\r\n#i4032477# #t4032477# #b#c4032477# / 2#k\r\n#b30000000 메소",
	["2"] = "모든 재료를 받은 #p2060005#는 #t1912034#을 만들어 주었다. 이걸로 한동안 편히 라이딩 할 수 있을 것 같다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요, 전에 특별한 안장 제작을 의뢰하셨던 그 분이시군요. 그런데 여긴 무슨 일로... 어어어? 혹시 옆에 있는 그 생물이 예전의 그 생물인가요? 엄청나게 자랐군요! 몰라볼 정도예요!", ["2"] = "아하, 그 생물을 보니 여기까지 어쩐일로 오셨는지 바로 알겠네요. 생물이 저렇게 자랐으니 예전의 안장은 작아져서 더 이상 쓸 수가 없어진 모양이군요. #b새로운 안장 제작#k을 의뢰하러 오신 건가요? "},
	["yes"] = {["1"] = "네, 그럼 이번에도 특별 안장을 만들어 드릴게요. 저렇게 자란 걸 보니 이번에는 좀 더 신축성이 있는 소재로 만들어야겠네요. 안장의 재료면서 신축성이 있는 소재라... 다들 희귀한 물건밖에 없어서 구하실 수 있을지 원...", ["2"] = "일단 재료에 대해 말씀 드릴게요. 첫 번재 재료는 #b#m211000000##k 지역에 출몰하는 무시무시한 몬스터, #r#o8140000##k에게서 #b#t4032475##k을 구하는 거예요. #b10개#k만 구해 주세요. 무척 강한 몬스터이니 상대하기 쉽지 않을 거예요.", ["3"] = "두 번째 재료는 예전에 아쿠아로드의 깊은 바다에 난파된 배에서 나온 #b난파선의 보물상자#k 안에 들어있는 #b#t4032476# 2개#k예요. 깊은 바다 속은 레벨 85를 넘는 몬스터들이 득실대는 곳이니 주의하셔야 해요.\n아참, 난파선의 보물상자는 이렇게 생겼답니다.\n#i4032557#\r\n", ["4"] = "세 번째 재료는 #m251000000#의 특산물인 #b#t4032477##k를 #b2개#k 구해다 주세요. 원래는 #m251000000#에서 평범하게 판매했었는데, 요즘은 뭔가 문제가 있는지 판매하지 않고 있어요. 일단 #b#p2092001##k님께 문의해 보셔야 할 거예요.", ["5"] = "그리고 네 번째... 가장 중요한 재료! 이 모든 재료들을 가지고 완벽한 안장을 만들어낼 저를 위한 수고비, #b3000만 메소#k만 가져다 주세요. ", ["6"] = "네? 너무 많은 게 아니냐고요? 저런 재료들을 잘 다룰 수 있는 사람은 이 메이플 월드에 저뿐인걸요. 게다가 당신은 저런 독특한 생물까지 다루시니 엄청나게 부자이실 것 같은데 아닌가요?"},
	["no"] = {["1"] = "안장은 필요 없으신 모양이지요? 아무리 봐도 사이즈가 예전 안장이 맞을 사이즈가 아닌데..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "모든 재료를 구해 오셨군요! 바로 안장을 만들도록 할게요. "},
	["yes"] = {["1"] = "생물의 움직임에 방해되지 않을 정도의 신축성을 가지면서도, 비늘로부터 탑승자를 보호할 수 있는 멋진 안장이 완성 되었어요. ", ["2"] = "하지만 이 안장의 신축성에도 한계가 있어요. 저 드래곤이 얼마나 자랄지는 모르지만, 너무 커지면 안장이 감당하지 못할지도 몰라요. 그때는 새로운 안장을 제작해야 하니 다시 오셔야 할 거예요."},
	["stop"] = {
		["item"] = {["1"] = "어라, 재료를 잊으신 건가요? 첫 번째 재료는 #m211000000# 지역의 몬스터 #o8140000#에게서 나오는 #b#t4032475# 10개#k, 두 번째 재료는 아쿠아로드 깊은 바다 #b난파선의 보물상자#k에서 나오는 #b#t4032476# 2개#k, 세 번째 재료는 #b#m251000000# 특산물#k인 #b#t4032477# 2개#k예요. ", ["2"] = "모든 재료와 함께 제작에 드는 수고비 #b3000만 메소#k를 가져다 주시면 안장을 만들어 드릴게요."},
	},
}
return nTable
end