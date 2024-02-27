return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 40,
	["npc"] = 9000066,
}
nTable["check1"] = {
	["npc"] = 9000040,
	["infoNumber"] = 27019,
	["infoex"] = {"10"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1142128, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "슬리피우드 탐험가",
	["area"] = 51,
	["0"] = "슬리피우드 지역 곳 곳을 탐험하면 #b<슬리피우드 탐험가>#k 의 칭호를 얻을 수 있다는데....",
	["1"] = "#b#e칭호 - 슬리피우드 탐험가#k#n\r\n슬리피우드 주요 지역 10곳 탐험.\r\n#b● 진행상황 : #R27019# / 10 완료.",
	["2"] = "슬리피우드의 곳 곳을 누비고 다닌 덕분에 #b<슬리피우드 탐험가>#k의 칭호를 획득했다.",
	["viewMedalItem"] = 1142128,
	["medalCategory"] = 1,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "슬리피우드 지역의 탐험을 모두 마쳤군. 수고 많았네. 자네에게 #b<슬리피우드 탐험가>#k의 칭호를 부여해 주겠네."},
	["yes"] = {["1"] = "슬리피우드 지역의 탐험이 어땠나? 위험천만한 지하 던전 지역이지만 지금도 많은 메이플의 용사들이 용기를 내어 도전하고 있는 지역이라네. 그런 슬리피우드 지역을 탐험하느라 수고가 많았네 #b<슬리피우드 탐험가>#k의 칭호를 부여해 주겠네. 다른 지역의 탐험에도 꼭 도전해 보도록 하게나."},
	["stop"] = {
		["quest"] = {["1"] = "아직 탐험하지 못한 곳이 있군. 엘나스 산맥의 곳 곳을 더 탐험하고 오게나."},
	},
}
return nTable
end