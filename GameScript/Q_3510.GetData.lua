return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2140000,
	["lvmin"] = 113,
	["quest"] = {{["id"] = 3509, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2140000,
	["mob"] = {
		[1] = {["id"] = 8200007, ["count"] = 999}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 613600,
	["item"] = {
		{["id"] = 4021007, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "후회의 길을 걷는 자3",
	["0"] = "#m270020300#까지 이동할 수 있는 허가를 받았다. 그 이상 이동하고 싶다면 그 이상의 시험을 받아야만 한다. #b#p2140000##k에게 가서 시험을 받도록 하자.",
	["1"] = "#p2140000#은 더 깊은 곳에 가고 싶다면 #b#m270020300##k에 있는 #r#o8200007# 999명#k을 쓰러뜨리고 오라고 말했다.\n\n#o8200007# #r#a35101##k",
	["2"] = "#o8200007# 999명을 쓰러뜨렸다. #p2140000#은 허락의 문구를 말해주었다. 물론 이번의 허가는, #m270020400#까지만이다.",
	["area"] = 46,
}
nTable["say0"] = {
	["base"] = {["1"] = "더 깊은 곳으로 가길 원한다면, 더 강력한 시험을... 당연한 것 아니겠습니까? 어떻습니까? 시험을 받으시겠습니까?"},
	["yes"] = {["1"] = "그렇다면 #b#m270020300##k에 가서 #r#o8200007##k을 쓰러뜨려 보십시오. #r999명#k을 쓰러뜨린다면, 당신께 그 이상을 이동할 수 있도록 허가를 내드리겠습니다."},
	["no"] = {["1"] = "어렵다면 어쩔 수 없지요. 당신이 한계가 거기까지인 것을."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o8200007# 999명을 쓰러뜨리고 돌아오셨군요. 훌륭합니다. 이제 당신께 이동 허가를 드리도록 하겠습니다. "},
	["yes"] = {["1"] = "#d시간의 여신, 륀느를 대리하여 당신께 네 번째 후회를 되돌려 볼 것을 허락합니다.#k", ["2"] = "자, 이제 가보시지요. #b#m270020400##k까지 갈 수 있을 겁니다. 물론, 그 이상 이동하는 건 불가능합니다. 더 가고 싶다면 새로운 시험을 청하십시오."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o8200007# 999명#k을 쓰러뜨리지 못했군요. 당신께는 아직 과거의 흐름을 역류할 힘이 부족한 것 같습니다."},
	},
}
return nTable
end