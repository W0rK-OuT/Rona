return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2022003,
	["quest"] = {{["id"] = 6164, ["state"] = 2}},
	["job"] = {212, 222, 232},
}
nTable["check1"] = {
	["npc"] = 2020009,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100000,
}
nTable["info"] = {
	["name"] = "로베이라의 의도",
	["parent"] = "샤모스의 과거",
	["order"] = 6,
	["1"] = "#p2022003#는 지친 듯 #p2020009#에게 용서해달라는 말을 중얼거렸다. #b#p2020009##k님께 가 보자.",
	["2"] = "#p2020009#님은 #p2022003#를 풀어 줄 수는 없다고 단호히 말했다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐흐흐… 이제는 힘들어. 여긴 너무 지겨워… #p2020009#… 아니 #p2020009#님 제발 풀어 주세요… "},
	["yes"] = {["1"] = "거기 누구 있소? 제발 #b#p2020009##k에게 전해 주시오. 이 #p2022003#를 놓아 달라고… "},
	["no"] = {["1"] = "......"},
}
nTable["say1"] = {
	["base"] = {["1"] = "그래. #p2022003#는 아직도 정신을 차리지 못한 것인가? \n\r#L0# #b그를 풀어주시진 않을 겁니까?#k", ["2"] = "그에 대해 동정심조차 없는 건 아닐세. 하지만 그는 세계를 위협한 자. 그의 마법이 모두 모이는 일은 절대 없어야 해. 절대로 그를 풀어줄 수 없지. 하지만 그렇다고 없애 버려서도 안 돼… "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["npc"] = {["1"] = "…제발 용서해 줘. #p2020009#…!"},
	},
	["ask"] = 1,
}
return nTable
end