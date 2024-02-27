return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1040000,
	["lvmin"] = 15,
	["job"] = {100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512, 2100, 2110, 2111, 2112, 2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1040000,
	["item"] = {{["id"] = 2020000, ["count"] = 1}, {["id"] = 4000034, ["count"] = 100}, {["id"] = 4000042, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1500,
	["item"] = {
		{["id"] = 4000034, ["count"] = -100},
		{["id"] = 4000042, ["count"] = -10},
		{["id"] = 2020000, ["count"] = -1},
		{["id"] = 4021000, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4021001, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4021002, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4021003, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4021004, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4021005, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4021006, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4021007, ["count"] = 1, ["prop"] = 1}
	},
}
nTable["info"] = {
	["name"] = "던전입구를 지키는 경비병 루크",
	["0"] = "헤네시스던전 입구에 있는 경비병 루크를 만나보자.",
	["1"] = "던전 입구에서 루크라는 경비병을 만났다. 그는 어머니께 몸보신 할 음식을 해드려야 한다면서 #b주니어 네키의 가죽 100개와 스티지의 날개 10개, 샐러드 1개#k를 모아와 달라고 부탁했다. 자기는 경비서느라 바쁘다고 말했지만... 내가 보기에는 계속 졸고 있는것만 같은데...?!?!\n\n#i2020000# #t2020000# #b#c2020000##k/1\n#i4000034# #t4000034# #b#c4000034##k/100\n#i4000042# #t4000042# #b#c4000042##k/10",
	["2"] = "던전 입구를 지키고 있는 루크에게 부탁한 물건들을 모두 가져다 주었다. 뱀술을 담근다고 하던데 왠지 먹어보고 싶어지는데~ 루크는 보답으로 근처에서 찾아낸 잘 제련된 보석을 주었다. 제련된 보석이 저절로 생겨날리는 없고... 누군가가 여행 도중에 잃어버린 물건은 아니었을까? 아무튼 나중에 뱀술이 다 되면 다시 들러봐야 겠는걸...",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "음... 잠깐! 너 꽤 강한 모양인데? 너에게 부탁할 것이 하나 있는데 말야... 내가 이래뵈도 꽤 효자라서 매년 어머니께 몸보신 할 음식들을 해 드리는데 요즘은 경비를 서느라 도저히 시간이 나질 않아서 말야. 미안하지만 어머니께 드릴 음식을 할 재료를 모아다 주겠어?"},
	["yes"] = {["1"] = "좋았어! 올해는 어머니께 맛~있는 뱀술을 해 드리려고 하거든? #b#t4000034##k 100개와 #b#t4000042##k 10개, 그리고 디저트로 먹을 #b#t2020000##k 하나만 구해다 주겠어? 그럼 전부 모으면 다시 날 찾아와 달라고~"},
	["no"] = {["1"] = "여러 가지로 바쁜 모양이지? 나중에 시간이 난다면 내 부탁좀 꼭 들어달라구~!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오... 정말로 모아올 줄이야! 이걸로 아주 아주 맛있는 뱀술을 담글 수 있겠는걸? 귀한 거라서 다른 사람에게는 주지 않는 거지만 너라면 조금 나눠줄 수도 있으니 나중에 술이 다 되면 다시 한 번 들러줘. 꼭이야. 알았지?", ["2"] = "아참... 이렇게 재료를 모아다 주었으니 뭔가 선물을 해야 할텐데... 뭐가 좋을까나~ 그렇지! 이 근처에 반짝이는 물건들이 많거든. 그동안 모아둔 건데 너에게 줄게. 아마 분명히 여행에 도움이 될거야. 어서 받아."},
	["yes"] = {["1"] = "잘 받았겠지? 도와줘서 고마웠어. 빨리 집으로 가져가서 어머니께 보여 드려야겠군! 그럼 이만~!"},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000034##k 100개와 #b#t4000042##k 10개, 그리고 디저트로 먹을 #b#t2020000##k 하나만 구해다 주겠어? 어머니께 뱀술을 해 드리려고 하거든. 대신 모아와 주기만 한다면 사례는 분명히 할게."},
	},
}
return nTable
end