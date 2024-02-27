return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 15,
	["npc"] = 9000066,
}
nTable["check1"] = {
	["npc"] = 9000040,
	["infoNumber"] = 27010,
	["infoex"] = {"20"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1142127, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "초보 탐험가",
	["area"] = 51,
	["0"] = "탐험의 시작! 빅토리아 대륙의 각 마을 주변을 탐험하면 #b<빅토리아 탐험가>#k 의 칭호를 얻을 수 있다는데....",
	["1"] = "#b#e칭호 - 초보 탐험가#k#n\r\n빅토리아 아일랜드의 주요 지역 20곳 탐험.\r\n#b● 진행상황 : #R27010# / 20 완료#k",
	["2"] = "본격적인 모험의 시작 지점인 빅토리아 아일랜드의 곳 곳을 누비고 다닌 덕분에 #b<초보 탐험가>#k의 칭호를 획득했다.",
	["medalCategory"] = 1,
	["viewMedalItem"] = 1142127,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "빅토리아 아일랜드의 외곽지역의 탐험을 모두 마쳤군. 자네에게 #b<초보 탐험가>#k의 칭호를 부여해 주겠네."},
	["yes"] = {["1"] = "어떤가.. 빅토리아 아일랜드  탐험이 재미있었나? 본격적인 모험의 시작점이자 너무도 친숙한 곳이기에 그 소중함을 잃어버릴 때가 많지만 이제 #b<초보 탐험가>#k의 칭호를 부여받은만큼 빅토리아 아일랜드에 더욱 애정을 가지고 활동해 주길 바라네. 그리고, 다른지역의 탐험에도 꼭 도전을 해보게나."},
	["stop"] = {
		["quest"] = {["1"] = "빅토리아 아일랜드 곳 곳을 더 돌아보고 오게나."},
	},
}
return nTable
end