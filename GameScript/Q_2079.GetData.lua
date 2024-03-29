return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002101,
	["quest"] = {{["id"] = 2080}, {["id"] = 2081, ["state"] = 2}, {["id"] = 2212}, {["id"] = 2077}, {["id"] = 2078}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 1052001,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 300,
}
nTable["info"] = {
	["name"] = "도적으로의 길",
	["0"] = "커닝시티의 #p1052001#처럼 멋있는 도적이 되고 싶다면..#p1002101#에게 그 도적으로의 길에 대해 알려달라고 하는게 좋지 않을까?",
	["1"] = "커닝시티의 으슥한 지하에 은둔하고 있는 #b#p1052001##k님을 만나면 도적에 대한 가르침을 얻을 수 있을 거라고 했다. #b커닝시티#k로 가보자. 커닝시티로 가는 길을 확인하기 위해서는 월드맵(#rW#k)을 열어 확인하는 것이 좋을 것 같다.",
	["2"] = "커닝시티의 #p1052001#를 만나 도적에 대한 가르침을 얻었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "그렇지. 상당한 민첩(Dex)과 또 행운(Luk)을 요하는 #b도적#k이라는 직업 역시 상당한 매력이 있지. 어때? 도적으로의 길을 가보겠나?"},
	["yes"] = {["1"] = "도적이로군. #r#p1052001##k를 만나기 위해서는 커닝시티라는 곳으로 가야해. 우선 그를 만나봐. #r도적#k이 되기 위해서는 #b레벨 10#k 이 되어야 하니 잊지 말고.. 이동하는 동안 만나는 몬스터도 사냥을 하는 것을 잊지 말고."},
	["no"] = {["1"] = "#b#p1052001##k가 있는 곳을 가보는 것만으로도 상당히 즐거울텐데.. 뭐, 어찌 되었든 직업의 길을 선택하고 싶다면 다시 나를 찾아와."},
}
nTable["say1"] = {
	["base"] = {["1"] = "도적이 되고 싶어 이 은둔의 장소로 온 건가?"},
	["yes"] = {["1"] = "후훗, 도적이 될 마음의 준비가 되었다면.. 다시 나를 찾아와라... 그 전에.. #r조건#k이 있다.. 도적이 되기 위해서는 당신의 레벨은 적어도 10 이상이어야 한다."},
	["stop"] = {
		["npc"] = {["1"] = "#b#p1052001##k.. 그 녀석 음침한 곳을 좋아해서 말야. 커닝시티의 무슨 카페라던가? 그 지하에 있다는 거 같은데.."},
	},
}
return nTable
end