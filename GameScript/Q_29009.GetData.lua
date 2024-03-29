return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 30,
	["npc"] = 9000066,
}
nTable["check1"] = {
	["npc"] = 9000040,
	["infoNumber"] = 27014,
	["infoex"] = {"10"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1142116, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "무릉도원 탐험가",
	["area"] = 51,
	["0"] = "무릉도원의 곳 곳을 탐험하면 #b<무릉도원 탐험가>#k 의 칭호를 얻을 수 있다는데....",
	["1"] = "#b#e칭호 -무릉도원 탐험가#k#n\r\n무릉도원 주요 지역 10곳 탐험.\r\n#b● 진행상황 : #R27014# / 10 완료.",
	["2"] = "무릉도원의 곳 곳을 누비고 다닌 덕분에 #b<무릉도원 탐험가>#k의 칭호를 획득했다.",
	["medalCategory"] = 1,
	["viewMedalItem"] = 1142116,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "무릉도원의 탐험을 모두 마쳤군. #b<무릉도원 탐험가>#k의 칭호를 부여해 주겠네."},
	["yes"] = {["1"] = "어떤가 무릉도원 탐험은 즐거웠나? 신선이 살고 있다는 무릉도원을 그 정도로 탐험했으면 언젠가 신선이 될 수 있을지도 모른다네. 허허허. 여튼 그 정도 수고를 했으면 #b<무릉도원 탐험가>#k의 칭호를 받을만 하군. 수고했네. 다른 지역의 탐험에도 꼭 도전해 보도록 하게나."},
	["stop"] = {
		["quest"] = {["1"] = "아직 탐험하지 못한 곳이 있군. 무릉도원의 곳 곳을 더 탐험하고 오게나. 무릉 마을 부터, 백초마을, 빨간코 해적단 소굴 등 일일이 설명해 주지 않아도 어디가 무릉도원인지는 잘 알고 있을 걸세."},
	},
}
return nTable
end