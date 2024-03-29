return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2091001,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3803, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2091001,
	["item"] = {{["id"] = 4031433, ["count"] = 5}},
	["mob"] = {
		[1] = {["id"] = 6130209, ["count"] = 20}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 30000,
	["item"] = {
		{["id"] = 4031433, ["count"] = -5}
	},
}
nTable["info"] = {
	["name"] = "고양이 원령 퇴치",
	["parent"] = "도공의 가르침",
	["order"] = 2,
	["0"] = "선인이 되는데 도움을 주는 신묘한 술법이 적혀 있다는 비급. 그 낱장을 모두 찾아 왔지만, #b#p2091001##k은 심각한 표정을 지으며 #t4000299#을 살펴보기만 했다. 또 뭐가 문제인 거야? 선인은 언제 만들어 줄 건데? #p2091001#을 찾아가 보자.",
	["1"] = "#p2091001#은 #t4000299#을 살펴보니 고양이 발자국이 찍혀 있다고 말하며, 아무래도 들고양이가 비급을 보고 몰래 도술을 익힌 것 같다고 했다. 이대로 숲에 고양이 요괴가 다니게 둘 수 없다는 #p2091001#. #r#o6130209# 20마리#k를 퇴치하고 #b#t4031433# 5개#k를 모아다 달라는데…\n\n#i4031433##t4031433# #b#c4031433##k/5  \n#o6130209#  #r#a38041##k",
	["2"] = "#o6130209#을 퇴치하고 #t4031433#을 구해 가자, #p2091001#은 무척 훌륭한 일을 했다고 칭찬해 주었다. 하지만 #o5120506#은 줄 수 없다고 말하는데… 비급만으로도 도술을 익힐 수는 있지만, 그렇게 도술을 익힌 것은 요괴일 뿐이지 선인은 아니라며 차분히 수련을 하는 것만이 선인이 되는 길이라고 한다. 휴우. 헛수고만 했지만 틀린 말은 아니니 하는 수 없지. 도대체 선인은 언제쯤 될 수 있을까. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "#t4000299#을 구해다 준 분. 전에 당신이 가져다 준 #t4000299#이 심상치 않다오. 종이 여기저기에 찍혀 있는 이 고양이 발자국을 보구려. 그냥 들고양이들이 밟고 다녀서 생겼다고 보기에는 좀 이상하지 않소? ", ["2"] = "얼마 전부터  천도과수원 너머에 #b고양이 울음소리를 내는 요괴#k가 출몰한다는 소리가 있다오. 아무래도 들고양이들이 #o5120506#을 보고 도술을 익힌 것 같소. 사나운 들고양이들이 도술까지 쓰게 되었다면 큰 문제가 아니겠소? 이 일을 해결해 주면 좋겠구려."},
	["yes"] = {["1"] = "정말 고맙구려. 그럼 어서 사람인 척 점잖은 모습을 한  들고양이 요괴, #r#o6130209# 20마리#k를 잡고 #b#t4031433# 5개#k를 가져다 주시오. 요괴를 퇴치하고 #t4031433#에 담겨 있는 술법을 회수해야겠소. "},
	["no"] = {["1"] = "거절하다니 아쉽소. 선인이 되려면 어려운 이를 도울 줄도 알아야 하는데…"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o6130209#을 퇴치하고 #t4031433#을 가져왔구려! 쉽지 않은 일이었을 텐데, 정말 고맙소! 이걸로 마구잡이로 술법을 쓰는 요괴가 줄어들겠구려."},
	["yes"] = {["1"] = "많이 수고해 줬는데 미안하지만 #o5120506#은 줄 수 없소. 준비되지 않은 자에게 술법을 줘서는 안 된다는 것을 이번 일로 확실히 깨달았으니 말이오. 훈련을 통하지 않아도 술법은 쓸 수 있겠지만, 그게 어디 선인이겠소? 그건 요괴일 뿐이라오. ", ["2"] = "누구든지 자연의 섭리에 따라 훈련을 통해 선인이 되는 것이 가장 좋은 일이오. 자연스럽게 다른 이를 돕는 마음을 발현할 줄 아는 당신이라면 이미 선인이 될 자질이 있는 사람이니 조급해하지 말고 수련에 정진하면 충분히 선인이 될 수 있을 것이오. "},
	["stop"] = {
		["item"] = {["1"] = "아직 #r#o6130209# 20마리#k를 전부 퇴치하고 #b#t4031433# 5개#k를 회수하지 못한 모양이구려. 어설프게 술법을 익힌 녀석들이 다니는 건 정말 위험한 일이니 빨리 #m250010501#으로 가시구려."},
		["mob"] = {["1"] = "아직 #r#o6130209# 20마리#k를 전부 퇴치하고 #b#t4031433# 5개#k를 회수하지 못한 모양이구려. 어설프게 술법을 익힌 녀석들이 다니는 건 정말 위험한 일이야~ 빨리 #m250010501#으로 가시구려."},
	},
}
return nTable
end