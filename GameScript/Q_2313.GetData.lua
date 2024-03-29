return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300005,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2312, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300003,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4000,
	["nextQuest"] = 2314,
}
nTable["info"] = {
	["name"] = "사건의 내막",
	["area"] = 30,
	["autoComplete"] = 1,
	["0"] = "머쉬킹 왕국의 경호대장이 전할 말이 있다고 한다.",
	["1"] = "머쉬킹 왕국의 내무대신을 찾아가 보자.",
	["2"] = "머쉬킹 왕국의 내무대신으로부터 사건의 개요를 전해 들었다.",
	["rewardSummary"] = "경험치 4,000\r\n'버섯 숲 탐사 (1)' 퀘스트로 진행 가능\r\n",
	["summary"] = "머쉬킹 왕국의 #b내무대신#k을 찾아가 보자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "제가 용사님에 대해 저희 #b내무대신#k님께 이야기를 해놓았습니다. #b내무대신#k님을 만나보시기 바랍니다."},
	["yes"] = {["1"] = "저희 왕국을 부탁합니다!"},
	["no"] = {["1"] = "시간이 별로 없습니다. 서둘러 주세요."},
}
nTable["say1"] = {
	["yes"] = {["1"] = "오! 당신이 경호대장이 말한 그 용사님이로군요. 지금 우리 머쉬킹 왕국에 큰 위기에 닥쳤습니다. 부끄럽지만 아이스랜드의 #b페페킹#k의 침공에 왕궁을 빼았기고, 비올레타 공주 마저 인질로 잡혀 있는 최악의 상황입니다.", ["2"] = "간사한 페페킹 녀석! 머쉬킹 왕의 건강이 악화되어 비올레타 공주에게 왕권을 이양하려는 이 때를 노려 침공한 것이 분명합니다. 페페킹의 멍청한 아들 주페왕자와 비올레타 공주님을 강제로 결혼시켜 머쉬킹 왕국을 손에 넣으려 하는 것이 최종목표....그러니 일단 위기에 빠진 비올레타 공주를 구하는 것이 급선무입니다. 용사님 공주를 부탁합니다."},
	["stop"] = {
		["npc"] = {["1"] = "시간이 없습니다. 어서 서둘러 주십시오."},
	},
}
return nTable
end