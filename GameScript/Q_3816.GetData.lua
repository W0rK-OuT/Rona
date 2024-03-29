return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2091000,
	["lvmin"] = 45,
}
nTable["check1"] = {
	["npc"] = 2091002,
	["item"] = {{["id"] = 4000281, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 4000281, ["count"] = -10}
	},
}
nTable["info"] = {
	["name"] = "사미인탕 만들기1",
	["parent"] = "사미인탕 만들기",
	["order"] = 1,
	["0"] = "#b#m250000000##k의 체력단련 교관 #b#p2091000##k이 필요한 것이 있다는데...",
	["1"] = "#p2091000#은 수련을 하다가 다치는 수련생들이 많이 생겼다면서 마을에 있는 약사 #b#p2091002##k에게 재료를 가지고 가서 약을 지어오라고 했다. 재료는 #b#t4000281# 10개#k라니 일단 재료부터 모아봐야겠다. \n\n#i4000281##t4000281#  #b#c4000281##k/10",
	["2"] = "#p2091002#은 체력단련을 하는 수련생들에게는 #t2022144#을 만들어 주겠다고 말했다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "자아, 그러니까. 하나, 둘, 셋… 도대체 셀 수가 없잖아. 수련을 하다 다치는 사람이 왜 이렇게 많은 거야? 어려운 수련도 아닌 것 같은데. 뭔가 부족한 걸까? 음… 거기, 자네! 혹시 괜찮다면 수련장의 일을 도와주지 않겠어?"},
	["yes"] = {["1"] = "고맙네. 자네도 해봤다면 알겠지만, 체력단련은 자칫 잘못하면 다치기 쉬워. 요새 수련장의 수련생들 중에서도 다친 사람이 많아진 것이 아무래도 다들 기가 약해진 모양이야. 교관으로서 보약이라도 먹여야겠다는 생각이 드는걸.", ["2"] = "체력에 좋은 보약은 역시 #b#t2022144##k이잖아? 그걸 먹으면 다들 힘이 나겠지. 약사 #b#p2091002##k이 만들 줄 알고 있으니 그에게 부탁을 해야겠어. 재료를 구해 놔야 빨리 만들어 줄 테니 #b#t4000281# 10개#k를 가지고 가서 #t2022144#을 만들어 달라고 해주게. 그 외의 재료는 #p2091002#이 알아서 해줄거야. "},
	["no"] = {["1"] = "체력단련 때문에 그런 거라면 자네도 보약부터 먹고 하라고 충고하겠어."},
}
nTable["say1"] = {
	["base"] = {["1"] = "으음… 전에 그 약재를 어디다 뒀더라? 이런. 나이가 들어서 그런지 기억이 가물가물하구나… 응? 자네는 예전에 감기로 왔던 사람인가? 아니라고? #p2091000#이 보내서 왔다고?"},
	["yes"] = {["1"] = "#t2022144# 말인가? 역시 #p2091000#이군. 구하기 어려운 재료는 미리 다 보내주고… 하지만 만들려면 #t4000281#을 푹 삶아야 하니까 시간이 오래 걸리는데… 뭐 그래도 체력에는 #t2022144#이 최고이긴 하지. 잘 만들어 줄 테니 좀 있다 다시 오게."},
	["stop"] = {
		["npc"] = {["1"] = "#b#p2091002##k에겐 아직 안 간 거야? #b#t4000281# 10개#k를 구해서 #b#t2022144##k을 만들어 달라고 부탁해 주게. "},
		["item"] = {["1"] = "자네는 어디가 아파서 여기 온 건가? 머리? 허리? 다리? 자자, 괜찮으니 말해 보게."},
	},
}
return nTable
end