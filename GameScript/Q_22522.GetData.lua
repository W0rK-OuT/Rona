return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1010100,
	["lvmin"] = 18,
	["quest"] = {{["id"] = 22521, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1012101,
	["item"] = {{["id"] = 4032458, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4032458, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 300,
	["item"] = {
		{["id"] = 4032458, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "마야의 죽 배달",
	["area"] = 7,
	["0"] = "#m100000000#의 #p1010100#가 뭔가 할 말이 있는 것 같다. #b#p1010100##k에게 말을 걸어 보자.",
	["1"] = "#p1010100#는 #o2220100#으로 만든 죽이 완성되었다며, #p1012101#에게 #t4032458#을 배달해 달라고 말했다. #b#m100000001##k로 들어가 #b#p1012101##k에게 죽을 배달하자.",
	["2"] = "#p1012101#는 죽을 먹고 기운을 조금 차린 모양이다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "저기 에반. 바쁘지 않으면 하나만 부탁해도 될까? 네가 전에 구해준 #t4000009#으로 죽을 만들었는데 식기 전에 #p1012101#에게 배달해 주지 않을래?"},
	["yes"] = {["1"] = "#b#p1012101##k가 어디 있는지 모르는 건 아니지? 너하고도 친하잖아. #b#m100000001##k에 있단다. 마을 오른쪽에 있는 집이야."},
	["no"] = {["1"] = "음... 뭔가 바쁜 일이라도 있는 거니? 하지만 친구인 #p1012101#를 위해 이 정도는 해주면 좋을 텐데..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "콜록콜록! 아, 에반! 오랜만이야. 전에 농장 견학하러 간 이후로 처음이지? 에헤헤, 내가 아파서 밖에 나가질 않았더니 얼굴 보기도 힘들었네... 거기 도마뱀은 애완동물이야? 귀엽다...", ["2"] = "그나저나 #m100000000#에는 어쩐 일로 온 거야? 심부름? 아니면 #p1012108# 언니하고 놀러? 응? #p1010100# 언니가 이걸 전해 주랬다고? 아, 파란버섯 죽이구나!"},
	["yes"] = {["1"] = "전해줘서 고마워. 색은 이래도 생각보다 맛있어. 아하하, 다른 사람들은 질색을 하지만 적어도 내 입맛에는 맛있더라고."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p1012101##k에게는 안 간 거야? #p1012101#는 #m100000000# 오른편에 있는 #b#m100000001##k에 사는데... 요즘 집 앞에 수상한 사람이 한 명 나타나서 수상한 사람이 아니라고 주장하는 모양인 가봐. 나쁜 사람은 아닌 것 같지만..."},
		["item"] = {["1"] = "콜록콜록... 신종플루는 아니에요. 파란버섯 죽이라도 먹으면 좀 나아질 것 같은데..."},
	},
	["ask"] = {"응? #t4032458#을 잃어버렸다고? 이런... 넌 정말 덜렁대는구나? #p1013101#는 안 그런 것 같은데... 아무튼 끓여놓은 죽은 많으니 다시 퍼줄게. 이번에는 잃어버리지 말고 #b#p1012101##k에게 가져가렴."},
}
return nTable
end