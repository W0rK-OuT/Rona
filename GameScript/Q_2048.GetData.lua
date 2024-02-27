return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061000,
	["lvmin"] = 45,
	["quest"] = {{["id"] = 2047, ["state"] = 1}},
	["item"] = {{["id"] = 1302014, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1061000,
	["quest"] = {{["id"] = 2047, ["state"] = 1}},
	["item"] = {{["id"] = 4001006, ["count"] = 1}, {["id"] = 1302014, ["count"] = 1}, {["id"] = 4003002, ["count"] = 1}, {["id"] = 4021009, ["count"] = 1}, {["id"] = 4001005, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 8000,
	["item"] = {
		{["id"] = 4021009, ["count"] = -1},
		{["id"] = 4003002, ["count"] = -1},
		{["id"] = 4001005, ["count"] = -1},
		{["id"] = 4001006, ["count"] = -1},
		{["id"] = 1302014, ["count"] = -1},
		{["id"] = 4031144, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "글라디우스 각성 방법",
	["parent"] = "만지의 낡은 글라디우스",
	["order"] = 2,
	["1"] = "슬리피우드의 크리슈라마를 찾아가 만지에게서 받은 #b낡은 글라디우스#k를 보여주자 그는 이 검은 자신이 만든 거라면서 #b별의 돌 1개, 얼음 조각 1개, 고대의 주문서 1개, 불꽃 깃털 1개#k가 있어야 각성시킬 수 있다고 말했다. 모두 처음듣는 것들 뿐이라서 어떻게 얻어야 할지 막막하기만 한데... 크리슈라마는 재료를 얻는 방법은 던전 입구를 지키고 있는 마이크가 알고 있을지도 모른다고 말했다. \n\n#i4001006##t4001006# #b#c4001006##k/1\n#i4021009##t4021009# #b#c4021009##k/1\n#i4003002##t4003002# #b#c4003002##k/1\n#i4001005##t4001005# #b#c4001005##k/1\n#i1302014##t1302014# #b#c1302014##k/1",
	["2"] = "각성에 필요한 모든 재료를 가지고 크리슈라마에게 가져갔다. 크리슈라마는 자신의 눈을 의심하면서 재료를 사용해서 낡은 글라디우스를 #b영웅의 글라디우스#k로 각성시켜 주었다. 신비로운 빛을 내뿜고 있는 꽤 좋은 검이로군... 왠지 만지에게 그대로 가져다 주기에는 아까운걸?",
	["area"] = 30,
	["summary"] = "글라디우스를 각성시킬 재료를 찾아서 크리슈라마에게 가져가자.",
	["demandSummary"] = "#i4001006:# #t4001006:# #c4001006# / 1\r\n#i1302014:# #t1302014:# #c1302014# / 1\r\n#i4003002:# #t4003002:# #c4003002# / 1\r\n#i4021009:# #t4021009:# #c4021009# / 1\r\n#i4001005:# #t4001005:# #c4001005# / 1\r\n",
	["rewardSummary"] = "경험치 8,000\r\n#Wbasic#\r\n#i4031144:# #t4031144:# 1 개\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "#b#t1302014##k라... 수십 년 전 트리스탄이 죽었다는 소문을 들었을때 나는 믿을 수 없었지... 녀석에게 #b#t1302015##k를 만들어 준 것이 바로 나였거든. 그 검이라면 어떤 녀석이라도 쓰러뜨릴 수 있을줄 알았는데... 이후 검이 변해버렸다는 말은 들었지만... 낡아버린 건가?", ["2"] = "이 검을 각성시키고 싶다는 말이로군. 하지만 쉽지 않은 일 일거야. 희귀한 재료들이 필요할 뿐만 아니라 구하기 힘든 주문서도 있어야 하거든... 그래도 각성시키고 싶다면... 지금부터 내가 말해주는 물건들을 모두 구해와 주길 바라네. 자네가 전부 구할수 있을지 어떨지는 모르겠지만...", ["3"] = "#b#t4021009##k 1개, #b#t4003002##k 1개, #b#t4001005##k 1개, #b#t4001006##k 1개를 자네가 가지고 있는 #b#t1302014##k와 함께 가져오게... 어떻게 얻을수 있을런지... 자세한 방법은 나도 알지 못한다네... 아... 그렇군. 던전 입구에서 경비를 서고 있는 #p1040001#가 무언가 알고 있을지도 모르지... 그럼 재료를 구해다 주게나."},
	["yes"] = {["1"] = "그럼 난 이 곳에서 기다리고 있겠네."},
	["no"] = {["1"] = "영웅의 글라디우스를 각성 시키려면 그만한 댓가를 치뤄야 하지. 하지만 그 댓가를 감당할 생각이 없다면 여기서 그만 두는 것도 나쁘지 않아."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이럴수가! #b#t4021009##k 1개, #b#t4003002##k 1개, #b#t4001005##k 1개, #b#t4001006##k 1개... 이 모든 것들을 정말 구해왔군! 좋다네... 이제 조금만 기다려 주게. 굉장히 오랜만에 주술을 사용하는 거라 잘 될지는 모르겠지만... 이걸로 어떻게든 #b#t1302014##k를 각성시킬 수 있을지도..."},
	["yes"] = {["1"] = "이럴 수가... 트리스탄의 검... 이 검을 다시 내 눈으로 보게 될 줄이야... 자네에게 이 검을 맡긴 이가 누군지는 모르겠지만 부디 이놈을 바른 길에 사용하길 바란다고 전해주게. 이로써 내가 할 일은 모두 끝났군... 그럼 잘 가게나..."},
	["stop"] = {
		["item"] = {["1"] = "비록 내가 꽤 늙어버린 건 사실이지만 내 눈을 속일수는 없을 것일세... #b#t4021009##k 1개, #b#t4003002##k 1개, #b#t4001005##k 1개, #b#t4001006##k 1개를 구해와 주게나. 아직 자네는 이것들을 모두 구하지 못한것 같네..."},
	},
}
return nTable
end