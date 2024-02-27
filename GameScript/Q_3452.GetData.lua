return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2050001,
	["lvmin"] = 35,
}
nTable["check1"] = {
	["npc"] = 2050001,
	["endscript"] = "q3452e",
	["item"] = {{["id"] = 4000099, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "블록퍼스는 외계생물?",
	["0"] = "#m221000000#의 #p2050001#에게 새로운 연구 과제가 생겼다고 한다. 하지만 그 연구를 하려면 누군가의 도움이 필요하다는데... ",
	["1"] = "외계인의 생태에 대해 끊임없이 연구하던 #p2050001#는 에오스탑의 몬스터 #b#o3230302##k와 외계인의 구조가 유사한 것 같다며, #o3230302#를 연구해 봐야겠다고 했다. #o3230302#의 구조는 문어 열쇠고리만 있다면 알 수 있을 것이라는데...\n\n#i4000099##t4000099# #b#c4000099#/1#k\n\n그렇다면... #t4000099#보다 더 확실한 자료가 있다면 더 정확한 결과를 알 수 있지는 않을까?",
	["2"] = "#p2050001#에게 #t4000099#를 가져다 주었다. #p2050001#가 과연 #o3230302#와 외계인의 관계를 알아낼 수 있을까?",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐음... 이건? 오호... 흥미롭군. 연구할 만한 가치가 있어. 자네는 여행자로 보이는데, 혹시 에오스탑이라는 곳에 가 본 적이 있는가? 그렇다면 문어와 비슷하게 생긴 #o3230302#란 몬스터를 봤을 텐데... #b#o3230302##k란 몬스터, 어딘가 수상하지 않은가?", ["2"] = "무슨 말이냐고? #o3230302#의 생김새와 구조가 왠지 낯익은 것이 이상해서 연구를 해보니, 아무래도 외계인과 유사한 것 같다는 말일세. 어쩌면 #o3230302#는 외계인이 만들어낸 문어로봇이 아닐까? 이건 반드시 연구해봐야 할 문제라네. 자네가 도와줄 수 있겠나?"},
	["yes"] = {["1"] = "외계인의 구조에 대해서는 오랫동안 지구방위본부에 대해서 연구해 왔기에 잘 알고 있지만 #o3230302#는 알 수 없지. 그러니 #o3230302#의 구조를 본따 만들어진 #b#t4000099# 1개#k를 구해주게. 그것만 있다면 블록퍼스와 외계인의 유사성을 입증할 수 있을 것 같군. ", ["2"] = "하지만 말야... #t4000099#보다 더 좋은 연구 자료가 있다면 좋을텐데 말이지. 예를 들자면 #b설계도 같은 것#k이라든지 말이야... 하긴 구하기 쉽지 않은 물건이니 방금 한 말을 잊어버려도 좋네."},
	["no"] = {["1"] = "도와줄 수 없다는 건가? 외계인에게 지구를 지키기 위해서라도, 협력해 주길 바라네."},
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "아직 문어 열쇠고리는 구하지 못한 모양이군. 그건 블록퍼스들이 가지고 있다네."},
	},
}
return nTable
end