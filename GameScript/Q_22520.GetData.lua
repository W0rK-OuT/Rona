return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012119,
	["interval"] = 0,
	["lvmin"] = 18,
	["lvmax"] = 35,
	["quest"] = {{["id"] = 22518, ["state"] = 2}},
	["item"] = {{["id"] = 4032457}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1012119,
	["mob"] = {
		[1] = {["id"] = 1210101, ["count"] = 200}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4032457, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "왕연해의 수련증표 다시 받기",
	["area"] = 7,
	["0"] = "#p1012118#씨가 준 수련증표를 잃어버렸다. 증표가 없으면 수련장에 입장할 수 없는 모양인데 어떻게 하지? #b#p1012118##k씨를 다시 찾아가 보자.",
	["1"] = "수련을 다시 받으면 #p1012118#씨에게 수련증표를 다시 받을 수 있는 것 같다. 수련으로 #o1210101# 200마리를 사냥하자.\r\n\r\n#o1210101##r #a225201##k",
	["2"] = "#o1210101#를 사냥했다. 흠... 여기서 얼마나 수련을 할지 모르겠다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "무슨 일인가? 내 수련을 다시 받고 싶다고? 수련증표를 다시 받고 싶다면 그게 바로 수련을 다시 하고 싶다는 말이지 무슨 말인가? 음핫핫핫! 역시 나의 수련은 이미 완료한 사람도 다시 하고 싶어지게 하는 마성을 갖고 있군. 좋아! 수련을 하지!"},
	["yes"] = {["1"] = "그럼 수련의 일환으로 #r#o1210101# 200마리#k를 사냥하게나. 음핫핫핫! 강도 높은 수련만이 고수를 만드는 법! 그 정도는 간단히 해내게나!"},
	["no"] = {["1"] = "헙, 수련 거부?! 벌써부터 하극상인가? 이런이런... 하지만 수련이 부족한 자네가 날 이길 수 있을 리 없을 텐데? 후후후. 머리를 식히고 다시 오게. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "호오, #o1210101# 200마리는 퇴치하고 돌아온 겐가? 생각보다 빠르군. 역시 이게 다 내 수련의 성과지. 자, 그럼 이걸 받게. "},
	["yes"] = {["1"] = "원하던 수련증표를 받으니 기분이 좋겠군. 후후후..."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o1210101# 200마리#k는 퇴치하지 못한 건가? 강도 높은 수련을 따라가지 못하는 수련생들이 속출 중이군, 후후."},
	},
}
return nTable
end