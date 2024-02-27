return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061005,
	["lvmin"] = 28,
	["quest"] = {{["id"] = 22532, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1061005,
	["quest"] = {{["id"] = 22534, ["state"] = 2}, {["id"] = 22535, ["state"] = 2}, {["id"] = 22536, ["state"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 7250,
	["sp"] = 0,
}
nTable["info"] = {
	["name"] = "도둑을 잡아주게",
	["area"] = 7,
	["0"] = "#b#m105040300##k의 #p1061005#에게 뭔가 할 말이 있는 것 같다. #b#p1061005##k를 찾아가 보자.",
	["1"] = "#p1061005#는 #p1040001#에게 능력 있는 경비병이라는 말을 들었다며 도와달라고 한다. 말을 들어 보니 누군가가 #p1061005#의 값비싼 약초를 훔쳐갔다는 건데... 분명 #m103000000#의 도둑일 게 분명하다며 #p1061005#는 #b#m103000000##k로 가서 조사해 달라고 말했다. 그러고보니 커닝시티에 알렉스가 있던 걸로 아는데 일단 #b알렉스#k를 만나보자.\r\n\r\n1. #y22534# #b(#u22534#)#k\r\n2. #y22535# #b(#u22535#)#k\r\n3. #y22536# #b(#u22536#)#k",
	["2"] = "#m103000000#의 도둑이 한 일은 아닌 것 같으니 계속 조사해 보겠다고 말하자 #p1061005#는 일단 기다려 주기로 했다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "오, 자네가 에반인가? #p1040001#에게 말은 많이 들었다네. 능력 있는 경비병이라고 칭찬이 자자하더군. 그래서 말인데, 자네 외에는 해결할 사람이 없는 일이 하나 있는데 부탁해도 괜찮겠는가?", ["2"] = "알지 모르겠지만 나는 약초를 채집해서 약을 만드는 일을 하고 있다네. 그런데 얼마 전에 누군가가 내 약초를 훔쳐갔어! 아주 비싸고 구하기도 힘든 것들인데 말이야. 그러니 자네가 그 도둑을 잡아주지 않겠는가?"},
	["yes"] = {["1"] = "이 #m105040300#에 도둑이 있을 리는 없으니, 분명 #m103000000#의 도둑이 내 약초 소문을 듣고 와서 훔쳐간 게 분명해! 그러니 #m103000000#로 가서 어떤 녀석이 내 물건을 훔쳐갔는지 조사하고 물건을 돌려받아 주게! ", ["2"] = "어떻게 조사하면 좋겠냐고? 글쎄. 그거야 자네가 잘 알지 않나? 보통 이런 사건은 탐문수사를 하던데. #b#m103000000# 사람들 중 아는 사람을 찾아 조사#k하며 점점 범위를 넓혀 가는 게 보통 아니던가? 뭐, 자네가 알아서 할 일이지만."},
	["no"] = {["1"] = "헉, 거절할 줄이야. #p1040001#한테 일도 잘하고 엄청 착한 사람이라고 들었는데 그렇지도 않은 모양이로군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "조사를 모두 하고 돌아온 겐가? 도둑은 어떤 녀석이었나? 응? 아직 범인을 잡지 못했다고?"},
	["yes"] = {["1"] = "흠... #m103000000#의 도둑들은 그런 짓을 하지 않는다라... 솔직히 믿어지지 않지만 굳이 자신들의 명예까지 걸어가며 범인을 찾아주겠다고 할 정도면 이번만은 그 말을 믿어보도록 하지. 그럼 도둑을 잡을 때까지 계속 수고해 주게."},
	["stop"] = {
		["quest"] = {["1"] = "아직 #m103000000#로는 가지 않은 건가? 약초를 되찾기 전까지는 밤에 잠도 오지 않을 것 같군. 어서 #b#m103000000#로 가서 탐문수사를 시작#k해 주게."},
	},
}
return nTable
end