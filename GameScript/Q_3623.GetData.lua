return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2071007,
	["interval"] = 0,
	["quest"] = {{["id"] = 3619, ["state"] = 1}, {["id"] = 3600, ["state"] = 2}},
	["item"] = {{["id"] = 4031230}},
}
nTable["check1"] = {
	["npc"] = 2071007,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = -5000,
	["item"] = {
		{["id"] = 4031230, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "연이 할머니의 항아리",
	["0"] = "아랫마을에 사는 연이 할머니는 손재주가 좋아서 항아리를 잘 만든다고 한다.",
	["1"] = "새 항아리가 필요해서 물레방앗간 앞에 있는 연이 할머니를 찾아갔다. 할머니는 전에 남편의 심부름을 해줘서 고맙다면서 특별히 항아리를 싸게 팔겠다고 했다. #b5천메소#k라니 정말 싼거 맞나?",
	["2"] = "5천메소를 주고 연이 할머니의 항아리를 구입했다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "아이고~ 오랫만이에요. 그 동안 잘 지냈수? \r\n#L0# #b항아리를 사러왔어요.#k", ["2"] = "항아리 말이우? 간혹 사람들이 내 항아리를 사러 오긴하지. 내 특별히 싸게 드리리다."},
	["yes"] = {["1"] = "#b5000메소#k만 내면 새 항아리를 드리리다. 돈이 준비되면 나에게 다시 말을 걸어요."},
	["no"] = {["1"] = "마음이 바뀐거요? 다시 항아리가 필요하게 되면 찾아와요. 당신한테라면 언제든지 항아리를 팔테니"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "가장 잘 만들어진 항아리로 줄테니 잠시 기다려봐요. 옳지. 이 항아리가 제일 잘 만들어졌네. "},
	["yes"] = {["1"] = "가져가서 잘 써요~"},
}
return nTable
end