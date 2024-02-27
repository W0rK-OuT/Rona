return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032001,
	["lvmin"] = 51,
	["quest"] = {{["id"] = 22569, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1032001,
	["item"] = {{["id"] = 4161051, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4161051, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 4161051, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "어떤 선원의 항해일지",
	["area"] = 7,
	["0"] = "#b#m101000000##k의 #b#p1032001##k씨에게 오닉스 드래곤에 대한 단서가 있다는 책을 받아보자.",
	["1"] = "책은 수필로 어떤 선원이 항해를 하며 쓴 항해일지였다. #b책 내용을 자세히 살펴보고#k 책을 쓴 저자에 대해 #p1032001#씨에게 물어보자.",
	["2"] = "책을 쓴 저자는 #b#m104000000##k에 사는 #b#p0020000##k이라는 사람인 모양이다. #p0020000#이라는 사람을 찾아가자.",
	["parent"] = "드래곤이 잠든 섬에 대한 정보",
	["order"] = 2,
}
nTable["say0"] = {
	["base"] = {["1"] = "이 책은 어떤 선원이 쓴 수필이라네. 자신이 항해를 하며 쓴 항해일지이지. 대부분 바다를 떠돌며 한 고생담을 적어 두었지만, 끝 부분을 보니 흥미로운 이야기가 하나 있더군. 그 부분이 자네에게 도움이 될 것 같아. 자, 일단 책을 받게."},
	["yes"] = {["1"] = "구구절절 설명해서 무엇하겠나. 이 책이 도움이 될지 안 될지는 전적으로 자네에게 달린 것. 어서 읽어보게. 그리 길지 않은 책이니 #b빨리 읽고 돌려주게#k."},
	["no"] = {["1"] = "음...? 왜 그러나? 혹시 손에 짐이 너무 많기라도 한 건가? 기다려 줄 테니 다시 말을 걸게."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4161051#는 다 읽은 건가? 빠르군... 속독이라도 익힌 건가? 오닉스 드래곤과 관련 있어 보이는 부분이 몇 페이지였더라?\r\n#L0##b15페이지#l\n#L1#17페이지#l\n#L2#18페이지#l\n#L3#20페이지#l\n#k", ["2"] = "그래, 그 페이지였지. 그 선원이 그 페이지를 쓴 날짜가 그러니까... 몇월 몇일이지?\r\n#L0##b6월 29일#l\n#L1#7월 8일#l\n#L2#7월 13일#l\n#L3#8월 2일#l\n#k", ["3"] = "그 때 선원이 타고 있다가 난파된 배의 이름은 기억하는가? 이름이 참 특이했는데... \r\n#L0##b선더볼트#l\n#L1#선더버드#l\n#L2#선지고기#l\n#L3#우사인볼트#l\n#k", ["4"] = "선원이 도착한 섬에 분명 거대한 드래곤이 있었다는데 그 드래곤의 뿔이 몇 개였는지 기억하나?\r\n#L0##b없다#l\n#L1#한 개#l\n#L2#두 개#l\n#L3#네 개#l\n#k", ["5"] = "그래, 맞아. 그거 때문에 내가 그 드래곤이 오닉스 드래곤일지도 모른다고 생각했지. 보통의 드래곤은 그렇게 뿔이 많지 않으니까. 이 선원이 본 드래곤은 아주 나이 많은 오닉스 드래곤이 분명해. 하지만 사실 이 수필이 어디까지 진실인지 알 수 없군...\r\n#L0##b진실을 알려면 어떻게 해야 할까요?#l\n#k", ["6"] = "그야 간단하지. 이 책을 쓴 저자를 직접 찾아가보면 되지 않겠는가. 책을 잘 살펴보았으면 저자의 이름도 분명 봤을 텐데. 저자의 이름을 기억하고 있는가?\r\n#L0##b은퇴한 뱃사람 #p0020000##l\n#L1#은퇴한 뱃사람 테오#l\n#L2#은퇴한 뱃사람 카이린#l\n#L3#은퇴한 뱃사람 그리드#l\n#k", ["7"] = "맞아, 그런 이름이었지. #p0020000#이라는 그 사람을 찾아가 보면 분명 오닉스 드래곤이 잠들어 있다는 그 섬에 대한 정보를 얻을 수 있을 걸세. 아, 혹시 #p0020000#을 모르는 건가? 그는 #m104000000#에 살고 있다네. #m104000000#로 가서 그를 만나 보게."},
	["yes"] = {["1"] = "이미 뱃사람 일은 은퇴했다고 들었는데 어떨지 모르겠군."},
	["stop"] = {
		["0"] = {["answer"] = "2", ["1"] = "그 페이지에 드래곤에 관한 내용이 있었던가? 아닌 것 같은데...", ["3"] = "그 페이지에 드래곤에 관한 내용이 있었던가? 아닌 것 같은데...", ["4"] = "그 페이지에 드래곤에 관한 내용이 있었던가? 아닌 것 같은데..."},
		["1"] = {["answer"] = "3", ["1"] = "그 날짜가 아니었던 것 같은데... 흠. 다시 한 번 읽어 보게나.", ["2"] = "그 날짜가 아니었던 것 같은데... 흠. 다시 한 번 읽어 보게나.", ["4"] = "그 날짜가 아니었던 것 같은데... 흠. 다시 한 번 읽어 보게나."},
		["2"] = {["answer"] = "1", ["2"] = "그런 이름이 아니었던 것 같은데...", ["3"] = "그런 이름이 아니었던 것 같은데...", ["4"] = "그런 이름이 아니었던 것 같은데..."},
		["3"] = {["answer"] = "4", ["1"] = "흠. 숫자가 안 맞는 것 같은데...", ["2"] = "흠. 숫자가 안 맞는 것 같은데...", ["3"] = "흠. 숫자가 안 맞는 것 같은데..."},
		["4"] = {["answer"] = "1"},
		["5"] = {["answer"] = "1", ["2"] = "흠... 그는 은퇴하지 않았는데...?", ["3"] = "카이린은 한창 활동중인 해적 아닌가. 허허허...", ["4"] = "본인이 누구의 자식인지 까먹은 겐가?"},
		["default"] = {["1"] = "아직 책을 안 읽은 겐가? 응? 책을 잃어버렸다고? 그럼 일단 퀘스트를 포기한 후 다시 말을 걸어주게."},
	},
	["ask"] = {"어이쿠 이런. 책을 떨어뜨렸군. 여기 있다네. 조심해서 보고 돌려주게."},
	["ask"] = 1,
}
return nTable
end