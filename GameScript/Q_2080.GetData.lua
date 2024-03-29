return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002101,
	["quest"] = {{["id"] = 2079}, {["id"] = 2081, ["state"] = 2}, {["id"] = 2212}, {["id"] = 2077}, {["id"] = 2078}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 1032001,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 300,
}
nTable["info"] = {
	["name"] = "마법사로의 길",
	["0"] = "나의 직업은 마법사가 좋을 것 같다. 어디로 가야할 지 궁금하다면 리스항구의 쿤을 만나보자.",
	["1"] = "#b마법사#k가 되기 위해서는 #b엘리니아#k의 가장 위 마법도서관에 있는 #r하인즈#k를 만나야 한다는 이야길 들었다. 어디.. 가볼까? 엘리니아로 가는 길을 확인하기 위해서는 월드맵(#rW#k)을 열어 확인하는 것이 좋을 것 같다.",
	["2"] = "엘리니아의 대마법사 하인즈로부터 마법사에 대한 가르침을 얻었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "대마법사 #p1032001#님은 말이야.. 나도 가까이에서 만나본 일이 없어.. 그.. 엘리니아의 꼭대기에 있는 마법도서관에 늘 계시다고는 하던데..어때? 마법사로의 길을 가보겠어?"},
	["yes"] = {["1"] = "그래. 나도 만나보지 못한 #b#p1032001##k님을 만나고 나면..이야기나 해달라구.. 마법사가 되기 위해서는 엘리니아라는 마을의 가장 꼭대기에 있는 도서관으로 가면 만날 수 있어."},
	["no"] = {["1"] = "마법사는 취향에 맞지 않을 것 같나? 내가 보기엔 괜찮을 것 같은데...언제든 직업이 갖고 싶어지면 나를 찾아 오게나."},
}
nTable["say1"] = {
	["base"] = {["1"] = "나와 같은 마법사가 되고 싶은가?"},
	["yes"] = {["1"] = "그래, 하루하루 수련을 하는 모험가들이 늘어가고 있지. 우선 마법사의 길을 선택하기 위해선 #b레벨 8#k 은 되어야 가능하지.. 준비가 되면 다시 한 번 나를 찾아오게나."},
	["stop"] = {
		["npc"] = {["1"] = "거대한 숲의 커다란 나무에 있는 #r엘리니아#k라는 마을의 가장 꼭대기에 가면 #b#p1032001##k님을 만날 수 있다고 하던데.. 왜? 못 만난건가?"},
	},
}
return nTable
end