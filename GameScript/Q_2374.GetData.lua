return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020011,
	["lvmin"] = 54,
	["subJobFlags"] = 2,
	["quest"] = {{["id"] = 2373, ["state"] = 2}},
	["item"] = {{["id"] = 4032619}},
	["job"] = {400, 410, 420, 430, 411, 421, 431, 412, 422, 432, 433, 434},
}
nTable["check1"] = {
	["npc"] = 1056000,
	["endscript"] = "q2374e",
	["lvmin"] = 55,
	["item"] = {{["id"] = 4032619, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4032619, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 40000,
	["item"] = {
		{["id"] = 4032619, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "아레크의 밀서",
	["area"] = 10,
	["type"] = "[필수]",
	["parent"] = "여덟 번째 임무 - 알현",
	["order"] = 3,
	["1"] = "아레크는 듀얼블레이드를 인정한다면서 밀서를 써서 설희에게 가져다 주라고 했다. 밀서의 내용은 알 수 없었지만 이것으로 우리들이 인정받게 되는걸까? 또 55레벨이 된 후, 설희를 찾아가라는 건 무슨 의미일까?",
	["2"] = "아레크의 밀서를 설희에게 전해주자. 설희는 드디어 우리가 공식적으로 인정받았다면서. 이제부터 좀 더 당당하게 나설 수 있게 되었다고 했다. 그리고 아레크의 인정을 받았으므로 70레벨, 120레벨이 되면 다른 도적들과 마찬가지로 전직할 수 있게되었다고 말했다.",
	["demandSummary"] = "#i4032619:# #t4032619:# #c4032619# / 1\r\n",
	["rewardSummary"] = "경험치 40,000\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "이 편지를 설희에게 전해주게. 무슨 내용인지 궁금한 표정이군. 그건 설희에게 전해주면 알게 될거야."},
	["yes"] = {["1"] = "빅토리아 아일랜드까지 무사히 돌아가길 바라네. 그리고 내가 보기엔 설희에게 돌아가기 전에 55레벨 이상 레벨을 올리고 가는 것이 좋을 걸세."},
	["no"] = {["1"] = "자네의 노력의 댓가로 얻게된 물건을 거부하는건가?"},
}
nTable["say1"] = {
	["stop"] = {
		["default"] = {["1"] = "55레벨이상 렙업하는 것을 잊으면 안되지..."},
		["npc"] = {["1"] = "나의 편지를 설희에게 전하게."},
		["item"] = {["1"] = "아레크님의 답변은 받아온건가요?"},
	},
	["ask"] = {"내가 준 편지를 잃어버린 건가? 생각보다 조심성이 부족한 것 같군. 다시 한장 써줄테니 이번엔 간수를 잘 하게."},
}
return nTable
end