return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032001,
	["lvmin"] = 30,
	["startscript"] = "q22541s",
	["quest"] = {{["id"] = 22540, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1052106,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2000,
}
nTable["info"] = {
	["name"] = "책의 행방은?1",
	["area"] = 7,
	["0"] = "#b#m101000000# #m101000003##k의 #b#p1032001##k씨에게 #t4161049#의뒷권을 빌려보자.",
	["1"] = "#p1032001#씨는 #t4161050#는 이미 #b#m103000000##k의 #b#p1052106##k가 빌려갔다며, #p1052106#에게 책을 받아 보고 반납해 달라고 말했다. #m103000000#로 가자.",
	["2"] = "#m103000000#의 #p1052106#에게 #t4161050#에 대해 물어보았다. 하지만 그 책은 이미 #b리스항구#k의 #b#p1002100##k에게 빌려 주었다는데...",
	["parent"] = "책의 행방은?",
	["order"] = 1,
}
nTable["say0"] = {
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "아... 책도 다 보고 너무 심심하네. 응? 나한테 무슨 볼 일이라도 있어? 뭐? 책? 아~ #t4161050# 말이지? 그걸 보면 드래곤처럼 날개를 달고 날 수 있을 줄 알았는데 아니어서 보다 말았어. 그런데 그게 왜? 그 책이 필요하다고?\r\n#b#L0#응. 대신 반납해 줄 테니 다 봤으면 그 책을 넘겨줘.#l\n#k", ["2"] = "그거라면 #b#m104000000##k의 #b#p1002100##k이 필요하대서 빌려줬는데. 자기가 보고 반납하겠다고 해서 아예 맡겨버렸어. 나한테는 그 책이 없으니 책을 보고 싶거든 #m104000000#로 가봐.\r\n#b#L0#(윽... 귀찮게 됐네.)#l\n#k", ["3"] = "엇, 그런데 네 옆에 날아다니는 그건 뭐야? 이상하게 생긴 도마뱀이네? 어쭈? 도마뱀 주제에 날아다니다니 제법인걸? 그 녀석 잠깐만 빌려주면 안돼? 조금만 연구하고...\r\n#L0##b절대 안 돼!#l\n#k", ["4"] = "쳇, 치사하긴. 알았어, 알았어. 그런 조그만 날개로 날아다니는 건 하나도 안 멋져. 안 따라한다고."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
		["npc"] = {["1"] = "아직 #p1052106# 소년에게는 안 간 겐가? #t4161050#는 #b#m103000000##k의 #b#p1052106##k 소년이 가지고 있을 거네."},
	},
	["ask"] = 1,
}
return nTable
end