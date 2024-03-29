return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300003,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2323, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300003,
	["item"] = {{["id"] = 4001318, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 22000,
	["item"] = {
		{["id"] = 4001318, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "왕국의 상징",
	["area"] = 30,
	["summary"] = "도둑맞은 머쉬킹 왕국의 옥쇄를 찾아 #b#p1300003##k에게 가져다 주자.",
	["demandSummary"] = "#i4001318:# #t4001318:# #c4001318# / 1\r\n",
	["rewardSummary"] = "경험치 22,000\r\n",
	["1"] = "도둑맞은 #b머쉬킹 왕국의 옥쇄#k를 찾아 #b#p1300003##k에게 가져다 주자.",
	["0"] = "#b#p1300003##k에게 말못할 고민이 있다는데...",
	["2"] = "#b총리대신#k이 훔쳐간 #b머쉬킹 왕국의 옥쇄#k를 찾아 #b#p1300003##k에게 가져다 주었다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "실은 용사님이 찾아봐주셨으면 하는것이 하나 있습니다.", ["2"] = "페페킹의 침공당시 급하게 피신을 하면서 왕국의 상징인 옥쇄를 챙기려 하는데 그 옥쇄를 보관하던 금고에 옥쇄가 없었습니다. 도대체 누가 훔쳐간 것인지... 옥쇄를 좀 찾아 주십시오."},
	["yes"] = {["1"] = "그 옥쇄가 페페킹의 수중에 넘어가면 비올레타 공주의 결혼식과 함께 저희 왕국이 공식적으로 페페킹의 손에 넘어간것으로 외부에 공표할 수 있게 됩니다.  그 금고를 열 수 있는 사람은 #b머쉬킹#k님과 #b비올레타#k외에는 #b총리대신#k과 저 뿐인데.... 아무튼 꼭 찾아야 합니다."},
	["no"] = {["1"] = "다시 한 번 생각해 주세요. 저희 왕국의 운명이 걸린 일입니다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "옥쇄를 찾아 오셨군요! 정말 감사합니다."},
	["yes"] = {["1"] = "네. 이야기는 전해 들었습니다. 설마 하니 #b총리대신#k이 이사건의 배후에 있을 줄이야.... 그렇게나 충성심이 가득한 사람이었는데 욕심이 화를 부른것 같습니다. 아무튼 옥쇄도 찾았고, 이제 왕국을 정상화 하는데에 더욱 힘을 써야 겠습니다."},
	["stop"] = {
		["item"] = {["1"] = "옥쇄는 왕국 권력의 상징. 꼭 되찾아야 합니다."},
	},
}
return nTable
end