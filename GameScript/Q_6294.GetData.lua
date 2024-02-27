return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081100,
	["job"] = {132},
	["skill"] = {{["id"] = 1321007, ["acquire"] = 1}},
}
nTable["check1"] = {
	["npc"] = 2041023,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 50000,
}
nTable["info"] = {
	["name"] = "잊혀진 축복의 힘",
	["parent"] = "영혼 축복",
	["order"] = 1,
	["0"] = "전직 이후, #q1321007#라는 이상한 녀석을 갖게 되었다. 영혼이라고는 해도 딱히 무언가 할 수 있는 것은 아니고, 별로 불편하지는 않아서 그냥 데리고만 있었다. 이 녀석이 가지고 있는 축복의 힘에 대해 #p2081100#님께서 알고 계신다는데…",
	["1"] = "#p2081100#님께선 #q1321007#는 많은 힘을 가지고 있지만 그것이 잠들어 있는 것뿐이라고 하며, 그것을 깨우고 싶다면 #b#p2041023##k에게 가보라고 하셨다.",
	["2"] = "#p2041023#는 #q1321007#의 힘을 쓸 수 있는 방법을 아는 듯 하다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "오랜만이군. 네 번째 전직까지 마쳤는데도 자네에게는 부족한 것이 있어 보이는데, 아닌가? 무슨 말이냐고? 혹시 자네에게 더 큰 힘을 부여하는 마법이 필요하지 않느냐는 말이네. ", ["2"] = "영문을 모르겠다는 표정이군. 걱정하지 마. 마법을 배우는 것은 자네가 아니니까. 자네가 아닌, 자네와 함께 있는 또 다른 영혼, #r#q1321007##k 말이야. #q1321007#는 원래는 무척 강력한 힘을 가졌던 사악한 자의 영혼인데 다행히도 완전히 정화를 시켜 순수한 영혼이 되었으니, 그의 힘을 깨워 사용해도 괜찮다는 말이네.", ["3"] = "#q1321007#가 가지고 있는 힘 중에는 #b축복의 힘#k이라는 것이 있다네. 원하는 자에게 더 큰 힘을 부여하는 마법이지. 어떤가? 관심 있는가? #q1321007#의 힘은 바로 자네의 힘이 될 테니, 얻는 것이 나쁘지는 않을 것 같은데."},
	["yes"] = {["1"] = "그렇다면 #b#m220050300##k에 서 있는 마술사, #b#p2041023##k를 찾아가 보게. 그라면 #r#q1321007##k의 과거도 알고, 영혼에 관련된 지식도 많으니 도움이 될 거야."},
	["no"] = {["1"] = "흠. 그래? 관심이 없다면 어쩔 수 없겠지. #q1321007#나 잘 돌봐 주게. 뭐 영혼을 어떻게 돌보겠냐만은…"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#m220050300#까지 오시다니! 이 마술사 #p2041023#의 마술이 보고 싶어서 오신 건가요? 그거라면 얼마든지 보여 드립… 마술을 보러 오신 게 아니라고요? 그럼 당신이 #p2081100#님께서 말씀한 그 사람이군요! 당신이 데리고 있는 영혼을 보여 주시겠어요? "},
	["yes"] = {["1"] = "아, 이건 #q1321007#로군요. 예전에는 악인이었던 자의 영혼이죠. 하지만 이렇게 기억을 지우고 보니 왠지 귀엽네요. "},
	["stop"] = {
		["npc"] = {["1"] = "#b#m220050300##k에 있는 #b#p2041023##k를 찾아가 보세요."},
	},
}
return nTable
end