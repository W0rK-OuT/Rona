return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2082004,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3742, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2082004,
	["item"] = {{["id"] = 4032518, ["count"] = 1}},
	["mob"] = {
		[1] = {["id"] = 8220012, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 200000,
	["item"] = {
		{["id"] = 4032518, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "진화된 오베론",
	["area"] = 41,
	["parent"] = "2230년 붕괴직전!",
	["order"] = 2,
	["1"] = "앤디는 그 동안의 시간여행으로 미루어 볼 때, 다섯 번째 시간모래는 2230년에 있을거라면서 아우프헤벤의 진화된 형태인 오베론을 퇴치하고 시간모래를 찾아오라고 했다.",
	["2"] = "앤디의 예상대로 다섯 번째 시간모래는 오베론이 가지고 있었다. 2230년 위험한 타워 안에서 오베론을 발견하고 다섯 번째 시간모래를 찾는데 성공했다.",
	["demandSummary"] = "#i4032518:# #t4032518:# #c4032518# / 1\r\n#o8220012# #a37431#\r\n",
	["rewardSummary"] = "경험치 200,000\r\n'시간의 파수꾼 넥스' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "다섯 번째 시간여행이군. 2230년엔 아우프헤벤보다 발전된 형태의 안드로이드가 나타났지. 그 이름은 오베론. 지금까지의 시간여행으로 미루어봤을 때 다섯 번째 시간모래는 오베론이 가지고 있을 확률이 높아. 오베론을 쓰러트리고 시간모래를 찾아와."},
	["yes"] = {["1"] = "시간이 얼마 남지 않았어. 잊지 말라고."},
	["no"] = {["1"] = "지금 와서 포기하겠다는 거야?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "역시 내 예상이 맞았군. 모래시계는 오베론이 가지고 있었어. 이제 뭔가 실마리가 풀려가고 있는 것 같아. 모두 네 덕분이야. 다시 한번 감사하다는 말을 하고 싶어."},
	["yes"] = {["1"] = "이제 우리에겐 마지막 모험만이 남은 건가?"},
	["stop"] = {
		["item"] = {["1"] = "2230년으로 가서 오베론을 쓰러트리고 시간모래를 찾아와."},
		["mob"] = {["1"] = "2230년으로 가서 오베론을 쓰러트리고 시간모래를 찾아와."},
	},
}
return nTable
end