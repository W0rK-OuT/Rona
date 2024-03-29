return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111008,
	["lvmin"] = 70,
	["lvmax"] = 85,
	["quest"] = {{["id"] = 3362}},
}
nTable["check1"] = {
	["npc"] = 2111008,
	["item"] = {{["id"] = 4031774, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 40000,
	["money"] = 50000,
	["item"] = {
		{["id"] = 4031774, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "배척받은 연구와 제뉴미스트",
	["0"] = "제뉴미스트의 연금술사 #b#p2111008##k에게 원하는 것이 생겼다는데...",
	["1"] = "#p2111008#은 제뉴미스트와 알카드노를 결합시킨다는 기묘한 연구로 사람들에게 외면받던 연금술사, #b#p2112014##k의 연구 결과에 관심이 생겼다며 #b#t4031774##k를 가져다 달라고 말했다. 그걸 구하려면 #p2112014#의 행방에 대해 아는 사람을 찾아야 할 텐데... \n\n#i4031774##t4031774# #b#c4031774##k/1 ",
	["2"] = "#t4031774#를 구해 #p2111008#에게 건네 주었다. 연구서를 받은 베딘은 무척 흥미진진한 눈으로 그것을 보는 것 같다.",
	["area"] = 47,
	["sortkey"] = "21",
}
nTable["say0"] = {
	["base"] = {["1"] = "너 혹시 #b#p2112014##k라는 이름을 알고 있어? #m261000000#에서는 꽤 유명한 자인데. 뭐 좋은 쪽으로 유명한 건 아니지만 말이야. 말도 안 되는 연구를 하다가 사람들에게 인정받지 못하고 어디론가 사라진 자거든.", ["2"] = "사실 #p2112014#의 주장이 어처구니 없기는 했어. 도대체가 말이야, 제뉴미스트와 알카드노의 연구를 결합하는 게 가능한 일이냐고. 그런 이상한 주장을 해대니 제뉴미스트는 물론이고 알카드노까지 그를 싫어했지.", ["3"] = "하지만 솔직히... 그 연구 결과가 어떻게 되었는지 궁금해하는 사람이 많아. 실패했으니까 다시 #m261000000#에 안 나타나는 거겠지만 그래도 궁금하잖아? 그러니 네가 그 사람의 #b연구 결과#k를 구해다 주지 않을래? "},
	["yes"] = {["1"] = "오옷! 정말 그렇게 해준다는 거지? #p2112014#가 어디로 사라졌는지는 알 수 없지만, 그를 쫓는 사람들이 #m261000000# 어딘가에 있다고 하니 그들을 통해 #p2112014#의 실험실에 들어가 몬스터들을 부수고 #b#t4031774##k를 구해다 줘. 그럼 부탁할게."},
	["no"] = {["1"] = "으음... 싫다면 어쩔 수 없지만... 넌 #p2112014#의 연구 결과에 호기심이 생기지 않니? 궁금하잖아. 그가 어떻게 제뉴미스트와 알카드노를 결합시켰는지. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "흠... 어때? #t4031774#는 구해 왔어? 뭐? 이게 바로 그거라고? 어디 한 번 보자!"},
	["yes"] = {["1"] = "오오~ 정말이잖아? 제뉴미스트와 알카드노의 연구를 결합하기 위해서는 먼저 두 학파의 연구가 한 곳에 뿌리를 두고 있다는 것을 이해해야 한다... 서문만 봐도 알 수 확실히 #p2112014#의 글이야.", ["2"] = "흠... 확실히 흥미로운 구석이 있단 말이야. 제뉴미스트와 알카드노의 대립이 가장 극대화 되던 시기에 제기된 주장이라 반발을 많이 샀지만... 사실 꽤 의미있는 연구인 것 같아. #p2112014#가 시기를 잘못 잡은 거지... 아무튼 고마워! 땡큐!"},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4031774##k를 가져오지 못한 것 같은데? #p2112014#의 실험실을 찾지 못한 거야? 흠... 그러고 보니 제뉴미스트 소속의 #b#p2112004##k라는 녀석이 #p2112014#를 찾는다는 말을 들은 것 같기도 하고..."},
	},
}
return nTable
end