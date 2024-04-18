return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081400,
	["interval"] = 0,
	["item"] = {{["id"] = 2280003}},
	["job"] = {412, 422, 434},
	["skill"] = {{["id"] = 4221000}, {["id"] = 4121000}},
}
nTable["check1"] = {
	["npc"] = 2081400,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 2280003, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "메이플 용사 스킬북",
	["0"] = "메이플 용사 스킬북을 잃어버렸다면 #b#p2081400##k를 찾아가보자.",
	["1"] = "이쯤이면 됐겠지? #b#p2081400##k에게 다시 말을 걸어보자.",
	["2"] = "#b#p2081400##k에게 메이플 용사 스킬북을 다시 받았다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "젊은 도적이여. 그대는 왜 나를 찾아 왔는가?\r\n#L0##b#t2280003#를 잃어버렸습니다.#k#l", ["2"] = "내가 자네를 도와주겠네."},
	["yes"] = {["1"] = "내가 자네에게 #t2280003#를 다시 주겠네. 잠시만 기다려 보게나."},
	["no"] = {["1"] = "잘가시게나."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "여기 준비가 되어있다네."},
}
return nTable
end