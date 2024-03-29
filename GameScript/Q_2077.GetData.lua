return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002101,
	["quest"] = {{["id"] = 2079}, {["id"] = 2080}, {["id"] = 2081, ["state"] = 2}, {["id"] = 2212}, {["id"] = 2078}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 1022000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 300,
}
nTable["info"] = {
	["name"] = "전사로의 길",
	["0"] = "전사로 전직을 하기 위해서는 앞으로 어떻게 해야할까? 리스항구의 #p1002101#을 만나보자.",
	["1"] = "리스항구의 #p1002101#은 #b레벨 10#k 이상이 되면 직업 중 #b전사#k를 선택할 수 있다고 한다. 전사가 되기 위해서는 #r페리온#k의 #r#p1022000##k를 만나라고 하는데...? 페리온으로 가는 길을 확인하기 위해서는 월드맵(#rW#k)을 열어 확인하는 것이 좋을 것 같다.",
	["2"] = "#p1022000#님을 만나 전사에 대한 가르침을 얻을 수 있었다. 앞으로 나의 길은...",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "전사를 선택한건가? 나를 보고 늠름한 전사가 되고싶다고 느낀 거겠지? 마음의 준비가 되었다면 수락하기를 과감히 누르길 바라네."},
	["yes"] = {["1"] = "좋아. #r전사#k라는 직업은 #b힘(Str)#k을 중요시 하고 어느 정도의 민첩(Dex)함도 요하는 직업이라고 할 수 있지. 지금 당장 #r페리온#k의 #b#p1022000##k님을 만나러 가봐."},
	["no"] = {["1"] = "전사가 되고 싶었던 거 아니었나? 뭐..어떤 직업이든 마음의 준비가 된다면 다시 나를 찾아와."},
}
nTable["say1"] = {
	["base"] = {["1"] = "전사가 되고 싶어서 나를 찾아 온 건가...그렇다면 제대로 찾아 왔네.."},
	["yes"] = {["1"] = "당신의 #b레벨#k이 #r10#k 이상이라면 #b전사#k로 전직을 시켜줄 수 있다네. 준비가 되면 언제든 나를 찾아오게.."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p1022000##k님을 만나지 못한 건가? #r페리온#k으로 가보래두 그러네~"},
	},
}
return nTable
end