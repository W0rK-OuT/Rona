return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020003,
	["lvmin"] = 33,
}
nTable["check1"] = {
	["npc"] = 2020003,
	["item"] = {{["id"] = 2010000, ["count"] = 10}, {["id"] = 4000088, ["count"] = 40}, {["id"] = 2022001, ["count"] = 10}, {["id"] = 2010002, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 14500,
	["item"] = {
		{["id"] = 2010000, ["count"] = -10},
		{["id"] = 2010002, ["count"] = -10},
		{["id"] = 2022001, ["count"] = -10},
		{["id"] = 4000088, ["count"] = -40}
	},
}
nTable["info"] = {
	["name"] = "폭스상사의 비밀",
	["parent"] = "따뜻한 엘나스",
	["order"] = 1,
	["0"] = "#p2020003#에게는 작은 비밀이 있다고 한다. 비밀에 대해 알고 싶다면 #m211000000#로 가보자.",
	["1"] = "#p2020003#는 원래 추위를 무척 많이 탄다고 한다. 그런 그가 오시리아에서도 가장 추운 #m211000000#에서 멀쩡한 것은 어떤 물건을 가지고 있어서라는데… 비밀을 알려 주는 대신 #p2020003#는 본부로 가기 전에 식량을 모아 두어야겠다며 재료들을 가져오라고 했다.\n\n#i4000088# #t4000088#  #b#c4000088##k / 40 \n#i2022001# #t2022001#  #b#c2022001##k / 10  \n#i2010000# #t2010000#  #b#c2010000##k / 10 \n#i2010002# #t2010002#  #b#c2010002##k / 10",
	["2"] = "#p2020003#에게 재료들을 가져다 주자 그는 그가 가지고 있는 망토를 보여 주며 그 망토가 있기에 추위를 막을 수 있었다고 말했다. 그 망토를 준 것은 다름 아닌 #b300살이 넘은 어떤 노인#k이라는데… ",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "아니, 자네는 왜 그렇게 움츠리고 있는 건가. 기백이 없어, 기백이! 자네가 알파소대의 대원이었다면 당장 혼쭐이 났을 걸세!#E \n\n#L0# #b#m211000000#는 너무 추워요.#k#l", ["2"] = "아, 하긴. 깜빡했군. #m211000000#의 추위라면 외계인의 레이저보다 무섭지. 하지만 그래도 너무 움츠리고 있어서는 안 되네. 좀 더 가슴을 펴게!#E \n\n#L0##b당신은 추위를 안 타는 모양이지요?#l", ["3"] = "알파소대의 상사로서 이 정도 추위에 물러설 수는 없지. 기합만 제대로 들어가 있으면 추위 따위는 타지 않는다네. …사실, 거기에 필요한 것이 하나 더 있긴 하지만…#E \n\n#L0##b필요한 것? 그게 뭔데요? 알려주실 수 없나요? #k#l", ["4"] = "그것에 대해 알려 달라고? 흐음… 이건 비밀인데… 알려줄 수 있기는 하지만 그냥은 안 되지. 알고 싶다면, 부탁 하나만 들어줘야겠어. 어때? 할 수 있겠나?"},
	["yes"] = {["1"] = "그렇다면 #b#t4000088# 40개#k와 #b#t2022001# 10개#k, #b#t2010000# 10개#k, #b#t2010002# 10개#k를 구해다 주게. 본부로 가기 전까지 비상용 도시락이라도 만들어 둘 생각이거든. 재료를 구해다 주면, #m211000000#의 추위를 이길 수 있는 비밀을 알려 주겠네."},
	["no"] = {["1"] = "싫다면 어쩔 수 없겠지. 추위를 막는데는 무엇보다 기합이야! 기합을 넣으라고!"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "흠. 모든 재료를 구해 왔군. 이 정도면 본부에 가기 전까지 충분한 영양이 되어 주겠어. 고맙네. 그렇다면 #m211000000#의 추위를 이기는 비밀을 알려 주도록 할까?"},
	["yes"] = {["1"] = "그 비밀은 이 망토에 있네. 예전에 #m211000000#에 오게 되었을 때, #b어떤 친절한 노인#k이 준 마법이 걸린 망토인데, 그는 300년이나 #m211000000#에 살아서 추위를 안 탄다며 거리낌없이 입고 있던 망토를 주더군. 정말 훌륭한 사람이지. 그에게 가면 다시 마법이 걸린 망토를 구할 수 있지 않을까?"},
	["stop"] = {
		["item"] = {["1"] = "아직 재료를 모두 구하지 못했군. 추위를 이기는 비밀을 알고 싶거든 어서 #b#t4000088# 40개#k, #b#t2022001# 10개#k, #b#t2010000# 10개#b, #b#t2010002# 10개#k를 모두 구해오게. "},
	},
}
return nTable
end