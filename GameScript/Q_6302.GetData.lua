return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060100,
	["quest"] = {{["id"] = 6301, ["state"] = 2}},
	["job"] = {112, 122, 132, 212, 222, 232, 312, 322, 412, 422, 434, 512, 522, 2112, 2217, 2218},
	["skill"] = {{["id"] = 1121011}},
}
nTable["check1"] = {
	["npc"] = 2040050,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 35000,
}
nTable["info"] = {
	["name"] = "카르타의 낡은 팔찌",
	["parent"] = "굳은 의지",
	["order"] = 3,
	["1"] = "#p2060100#는 의지를 흡수하려면 약으로 만들어야 하지만, 그렇게 해주기는 싫다면서 원한다면 그녀의 #b#t4031463##k를 구해 오라고 했다. #b#p2040050##k에게 가면 구할 수 있을거라고 하는데...",
	["2"] = "#b#p2040050##k는 #p2060100#의 팔찌에 대해 알고 있을까?",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신이 의지를 흡수하려면 조각인 채가 아니라 액체의 상태여야 하는데… 생각해보니 거기까지 해 줄 필요는 없는 것 같군. 약을 만드는 건 그리 쉽지도 않은데 거기까지 서비스 한다면 마녀답지 않잖아? .\r\n#b#L0#당신이 의지를 차원의 틈새에 버렸기 때문에 생긴 일이잖아.#l", ["2"] = "…인간들은 그래도 마땅해. \n\n#b#L0#무슨 말이지?#l", ["3"] = "…어쨌든 그 이상의 일은 해 줄 수 없어. 아. 분명히 말하지만 의지를 약으로 만드는 것은 엘리니아의 하인즈나 엘나스의 로베이라라도 못 할 거야. 오직 이 마녀 #p2060100#만이 할 수 있는 일이지. \n\n#b#L0#(카르타가 그렇게 대단한 마법사인가…?)#l", ["4"] = "정 의지를 원한다면 오래 전 지상에서 마법을 익히던 그 때, 잃어버렸던 팔찌를 찾아다 줘. 그렇다면 약을 만들어 주지."},
	["yes"] = {["1"] = "좋아. 팔찌는 그리프들이 가지고 있을 거야. 낡아서 쓰기 힘들 것 같으니… 그대로 가져와서는 안 돼. 방랑하는 연구자, #p2040050#에게 #t4011002#과 함께 가져가서 합성해 줘. 완성된 미스릴 팔찌를 가져오면, 당신에게 의지를 주도록 할게."},
	["no"] = {["1"] = "싫다면 관둬. 조각난 의지들로 뭘 할 수 있을지, 두고 보자고."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "안녕하세요? 마법과 금속, 식물, 광물… 그 외의 모든 것을 연구하고 있습니다. 혹시 그에 관련해서 궁금한 것이 있다면 무엇이든 도와 드리도록 하죠. "},
	["stop"] = {
		["item"] = {["1"] = "#t4031463#를 가져오지 못했군… 그게 아니라면 약은 줄 수 없어."},
	},
}
return nTable
end