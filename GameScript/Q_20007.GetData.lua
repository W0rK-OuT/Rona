return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1102000,
	["quest"] = {{["id"] = 20006, ["state"] = 2}, {["id"] = 20010}, {["id"] = 20011}, {["id"] = 20012}, {["id"] = 20013}, {["id"] = 20014}, {["id"] = 20015}, {["id"] = 20016}, {["id"] = 20017}, {["id"] = 20018}, {["id"] = 20019}, {["id"] = 20020}},
	["job"] = {1000},
}
nTable["check1"] = {
	["npc"] = 1102000,
	["mob"] = {
		[1] = {["id"] = 100124, ["count"] = 3}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 750,
}
nTable["info"] = {
	["name"] = "키쿠의 마지막 수련",
	["0"] = "#b수련교관 #p1102000##k의 다섯 번째 수련을 받아 보자.",
	["1"] = "#p1102000#는 지금까지 잘 수련해 주었다며, 마지막으로 #b#o0100124# 3마리를#k를 사냥해 보라고 말했다. #o0100124#는 다른 티티에 비해 체력이 강하니 단단히 대비하라는데...  \n\n#o0100124##r #a200071##k ",
	["2"] = "#o0100124#를 사냥하고 돌아왔다. #p1102000#는 핫핫 웃으며 이제 수련기사가 될 자격이 충분히 있으니 다시 #p1101002#에게 가보라고 말했다.",
	["area"] = 15,
}
nTable["say0"] = {
	["base"] = {["1"] = "벌써 기초수련의 막바지군. 자네 정말 성장이 빠른걸? 그럼 지금까지의 수련을 테스트하는 의미에서 조금 어려운 티티와 싸워보도록 하지."},
	["yes"] = {["1"] = "#b#m130010200##k에 가면 #o0100124#라는 녀석이 있는데, 그 녀석은 다른 티티에 비해 강하고 체력도 높아. 단단히 대비한 후에 #r#o0100124# 3마리#k만 잡도록 해. 자, 그럼 수고해."},
	["no"] = {["1"] = "테스트라는 단어 때문에 겁먹은 거야? 걱정하지 마. 넌 이미 통과할 수 있을 만큼 강해져 있으니까."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o0100124#를 무사히 사냥하고 돌아왔군! 정말 훌륭해! 자네만큼 성장이 빠른 노블레스는 무척 드문데... #p1101002#가 기뻐하겠구만. "},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o0100124# 3마리#k를 사냥하지 못한 건가? 아, 그러고 보니 #b#m130010200##k의 위치를 안 알려줬군... 말 안 해도 짐작할 줄 알았는데... #m130000100#에서 왼쪽으로 포탈을 타고 나가면 #m130010200#이 있다네. 거기에서 #o0100124#를 사냥하고 오게나."},
	},
}
return nTable
end