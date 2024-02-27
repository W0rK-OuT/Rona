return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002104,
	["lvmin"] = 22,
	["infoNumber"] = 21760,
	["infoex"] = {"0"},
	["quest"] = {{["id"] = 21719, ["state"] = 2}},
	["job"] = {2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1201000,
	["endscript"] = "q21720e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "인형사의 경고",
	["area"] = 6,
	["0"] = "블랙윙에 대해 #p1002104#는 어떤 판단을 내릴까? #b#m104000000##k의 정보상인 #b#p1002104##k에게 말을 걸어 보자.",
	["1"] = "검은 마법사를 부활시키려는 조직, 블랙윙에 대해 #b#p1201000##k도 알아야 한다며 #p1201000#에게도 이 이야기를 전해 달라고 했다.  그 동안 트루는 정보상인의 능력을 십분 발휘해 블랙윙에 관한 정보를 모을 모양이다.",
	["2"] = "#p1201000#은 블랙윙의 존재야말로 검은 마법사의 부활을 암시하는 것이라며, 더욱 노력해서 검은 마법사를 물리칠 수 있을 정도로 강해지자고 말했다. 그러면서 #p1201000#은 예전 문서를 해독하다 발견했다는 #b폴암 부스터#k 스킬을 알려주었다!",
	["type"] = "[스킬]",
}
nTable["say0"] = {
	["base"] = {["1"] = "음? 아직 마땅한 정보수집 일은 찾지 못했는데... 다른 거 필요한 거라도 있어? 혹시 재미 있는 정보라도?\n#b#L0#(인형사 프란시스와 만난 일을 말해 주었다.)#l\n#k", ["2"] = "블랙윙의 인형사 #p1204001#라... 확실하네. #m100000000#에서 일어났던 #o1210102# 이상사태, #m101000000#에서 벌어진 포악해진 #o1110100#의 원인은 그 녀석이 분명해. 그런데... 그 녀석이 검은 마법사라는 말도 했다고?"},
	["yes"] = {["1"] = "그러고 보니 검은 마법사를 다시 깨우려는 무리가 있다는 정보가 예전부터 있었어. 거짓말이라고 생각했는데, 그렇지도 않은 모양이네... 정말 검은 마법사가 부활하려는 걸까? 예언은 맞는 걸까...?", ["2"] = "블랙윙이라는 무리 조사할만한 가치가 있는 것 같아. 꽤 은밀한 조직인 것 같지만... 이 정보상인 #p1002104#의 정보망을 피해갈 수는 없지. 뭔가 관련 있는 정보를 찾으면 전해 줄게. 영웅님은 #b#m140000000##k으로 가서 #b#p1201000##k에게도 이 사실을 전해 줘.", ["3"] = "영웅의 귀환, 검은 마법사를 따르는 무리들, 그리고 예언... 모든 것은 연결되어 있어. 영웅을 깨운 당사자로서 #p1201000#도 이 사실에 대해 알아야 할 권리가 있어. 오랫동안 영웅에 관해 연구해온 #p1201000#이라면, 뭔가 도움을 줄 수도 있을 거야."},
	["no"] = {["1"] = "#p1201000#에게 위험한 소식은 전하기 싫은 거야? 그 아이는 연약해 보이지만 혼자 섬에 살면서 당신을 찾아낸 아이라고. 영웅님이 생각하는 것만큼 약하지 않아."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "아직 #m140000000#에는 안 간 건가? 검은 마법사와 관련된 이야기라면 #p1201000#에게도 전해 놓는 게 좋겠어. "},
	},
}
return nTable
end