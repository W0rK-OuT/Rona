return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1081100,
	["lvmin"] = 35,
	["quest"] = {{["id"] = 2058, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1081100,
	["item"] = {{["id"] = 4000029, ["count"] = 12}, {["id"] = 4000136, ["count"] = 12}, {["id"] = 4000043, ["count"] = 130}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3000,
	["money"] = 7500,
	["item"] = {
		{["id"] = 4000136, ["count"] = -12},
		{["id"] = 4000029, ["count"] = -12},
		{["id"] = 4000043, ["count"] = -130}
	},
}
nTable["info"] = {
	["name"] = "플로리나비치의 별미 Ⅱ",
	["0"] = "플로리나 비치의 리엘이 플로리나에 대하여 무언가를 물어본다. 뭐 그 정도 쯤이야.. 대답해주고 일을 시작해볼까?",
	["1"] = "플로리나 비치의 리엘이 부탁한 12인분의 음식 재료를 가져가야한다. \n\n#i4000136##t4000136# #b#c4000136##k/12\n#i4000043##t4000043# #b#c4000043##k/130\n#i4000029##t4000029# #b#c4000029##k/12",
	["2"] = "플로리나비치의 리엘이 내는 문제를 모두 풀었다. 그녀의 간단한 테스트에는 통과를 하고 새로운 손님 12명의 식사에 쓰일 음식 재료를 모아 갔다. ",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐음..뭐 알고 계시리라 믿지만..혹시나 해서 말이에요. 이 곳 플로리나비치에서 볼 수 없는 몬스터는 무엇일까요? \n\n#L0##b엄티#l\n#L1#클랑#l\n#L2#크로코#l", ["2"] = "음.. 기본적인 것은 알고 계시는 것 같아서 다행여요. 이 곳에 어떤 몬스터가 있는지도 모르고 무작정 사냥을 떠나실까봐 걱정이 되어서요.. 자, 그럼 아르바이트를 시작해볼까요?"},
	["yes"] = {["1"] = "그럼..아르바이트에 대해서 좀 더 설명해드릴게요. 달콤한 코코넛 쥬스를 만들 #t4000136# 12개와 식사 준비를 위한 #t4000043# 130개, 디저트로 내놓을 #t4000029# 12개#k 정도면 적당합니다. 반드시 신선한 재료들로 구해오셔야 하는 것을 잊지마세요. \n\n #i4000136# #t4000136# 12개\n#i4000043# #t4000043# 130개\n#i4000029# #t4000029# 12개"},
	["stop"] = {
		["0"] = {["answer"] = "3", ["1"] = "엄티는 해변의 우측으로 가다 보면 목격할 수 있을텐데...", ["2"] = "플로리나비치 별미 중엔 '클랑의 집게발'도 아주~ 유명하답니다."},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "모두 모아오셨나요? 신선하고 맛 좋은 재료가 아니라면 아르바이트 수당을 지급하지 않을 수도 있답니다. 물론, 필요한 갯수가 모자라서도 안되구요. 어디 확인해볼까요?"},
	["yes"] = {["1"] = "와아, 갖고 오신 재료는 모두 좋군요. 달콤한 내음이 나는 코코넛의 열매하며...살이 꽉 찬 집게발에다.. 싱싱한 바나나까지... 좋아요!!  곧 더 많은 관광객이 찾아오기로 예약이 되어 있는데요. 어때요? 해 볼 의향이 생기면 언제든 찾아와주세요. 당신 정도라면 믿고 맡길 수도 있고.. 수당을 좀 더 올려줄 수도 있겠는데요?"},
	["stop"] = {
		["item"] = {["1"] = "모자르는데...#b코코넛의 열매 12개, 로랑의 집게발 130개, 루팡의 바나나 12개#k가 맞는지 확인하고...만약 모자른다면 개수를 채워 와 주시겠어요?"},
	},
}
return nTable
end