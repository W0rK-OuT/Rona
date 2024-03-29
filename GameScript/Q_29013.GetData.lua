return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000066,
	["normalAutoStart"] = 1,
	["lvmin"] = 60,
	["infoNumber"] = 27020,
	["infoex"] = {"1"},
}
nTable["check1"] = {
	["npc"] = 9000040,
	["quest"] = {{["id"] = 29015, ["state"] = 2}, {["id"] = 29012, ["state"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1142120, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "메이플 탐험가",
	["area"] = 51,
	["autoStart"] = 1,
	["autoAccept"] = 1,
	["rewardSummary"] = "\r\n",
	["1"] = "#b#e칭호 - 메이플 탐험가#n#k\r\n● 획득 조건\n빅토리아 탐험가, 오시리아 탐험가 칭호 퀘스트 완료시 획득 가능#b\r\n● 진행 상황\n#y29015# : #u29015#\n#y29012# : #u29012#",
	["2"] = "빅토리아 월드와 오시리아 대륙의 탐험가 칭호를 모두 획득하고 드디어 #b<메이플 탐험가>#k칭호를 획득하였다.",
	["medalCategory"] = 1,
	["viewMedalItem"] = 1142120,
	["0"] = "궁극의 탐험가 #b<메이플 탐험가>#k에 도전해 보자.r\n빅토리아 탐험가\n오시리아 탐험가\r\n총 2개의 칭호를 모두 획득하면 얻을 수 있다.",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "#b<메이플 탐험가>#k에 성공한 자여. 그대를 진정한 탐험가로 세상에 공표하는 바이네."},
	["yes"] = {["1"] = "메이플 월드를 대표하는 두개의 큰 지역인 빅토리아 아일랜드와 오시리아 대륙의 탐험을 모두 마쳤군.  이제 자네에게 #b<메이플 탐험가>#k의 칭호를 부여해 주었으니 자랑스럽게 여기도록 하게. 큰 목표를 이루었다고 해서 만족하지 말고 계속해서 새로운 칭호에 도전해 보도록 하게나."},
	["stop"] = {
		["quest"] = {["1"] = "먼저 엘나스 산맥, 루더스 호수, 아쿠아로드, 무릉도원, 니할사막, 미나르 숲을 모두 탐험하고 각 대륙별 탐험가 칭호를 획득하고 오게나."},
	},
}
return nTable
end