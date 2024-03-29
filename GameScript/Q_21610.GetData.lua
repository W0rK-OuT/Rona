return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020007,
	["lvmin"] = 100,
	["quest"] = {{["id"] = 21607, ["state"] = 1}},
	["job"] = {2000, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 2020007,
	["infoNumber"] = 21619,
	["infoex"] = {"0"},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "스카두르의 조언",
	["area"] = 6,
	["0"] = "사춘기가 된 #t1902015#를 위해 #b#m211000000##k의 #b#p2020007##k를 찾아가 조언을 들어 보자.",
	["1"] = "#p2020007#는 아기 늑대를 시원하게 달리게 해줄 필요가 있다며 좋은 곳을 소개해 주었다. #b#m211050000##k에 있는 #b늑대 모양 바위 너머#k에 있는 #m921110000#으로 가서, 벌판을 완주하고 돌아오자. ",
	["2"] = "늑대의 벌판을 완주하고 돌아왔다. 사춘기가 된 #t1902015#도 조금 시원한 기분인 모양이다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "오, 자네는 전에 늑대 라이딩을 시작한 라이딩 동지 아닌가? 무슨 일인가?\n#b#L0#(류호를 보여주며 늑대의 사춘기에 대해 이야기했다.)#l\n#k", ["2"] = "흠... 늑대들도 한바탕 질풍노도의 시기를 겪기 마련이지. 그런 녀석들은 한바탕 시원하게 달려주면 기분이 풀리기 마련이야. 어떤가? #b늑대가 달리기 좋은 곳#k이 있는데, 소개시켜 줄까?"},
	["yes"] = {["1"] = "#m211000000# 필드 중 #b#m211050000##k라는 곳이 있는데, 그곳에 있는 늑대 모양 바위 너머에 라이더의 벌판이라는 곳이 있다네. 넓고 달리기 좋아서 라이더 동지들이 많이 찾는 곳이지. ", ["2"] = "가서 늑대의 벌판을 완주하고 오게나. 그걸로 사춘기에 들어갔다던 자네의 늑대, 류호도 꽤 기분이 좋아질 거야. "},
	["no"] = {["1"] = "흠... 거절인가? 혹시 아직 늑대 라이딩이 미숙해서 그런 건가? 그렇다면 어쩔 수 없겠군. "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "표정을 보아하니 꽤나 시원스럽게 달리고 온 모양이군. 자네의 #t1902015#도 상쾌한 얼굴인걸? 하하하~ 역시 늑대라면 한 번 바람처럼 달려 봐야 하는 법이지. 달리는 순간, 라이더와 늑대가 하나가 되는 그 기분! 라이더 동지들만이 알지!"},
	["yes"] = {["1"] = "계속해서 늑대와 교감하며 라이딩하길 바라네."},
}
return nTable
end