return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300003,
	["lvmin"] = 30,
	["startscript"] = "q2322s",
	["lvmax"] = 38,
	["quest"] = {{["id"] = 2321, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300003,
	["infoNumber"] = 2322,
	["infoex"] = {"1"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 11000,
	["nextQuest"] = 2323,
}
nTable["info"] = {
	["name"] = "성벽을 넘어서 (2)",
	["area"] = 30,
	["summary"] = "머쉬킹 왕국의 성벽을 조사해 보고 #b내무대신#k에게 보고하자.",
	["0"] = "#b내무대신#k이 성에 침투하는 방법에 대해 전할 말이 있다고 한다.",
	["1"] = "머쉬킹 왕국의 성벽을 조사해 보고 #b내무대신#k에게 보고하자.\r\n#b성벽 외부 조사 : #R2322# / 1 완료",
	["2"] = "성벽을 조사해 보았다. 특별한 침투 방법이 없는 듯 하다.",
	["rewardSummary"] = "경험치 11,000\r\n'성벽을 넘어서 (3)' 퀘스트로 진행 가능\r\n",
	["demandSummary"] = "#b성벽 외부 조사 : #R2322# / 1 완료.",
}
nTable["say0"] = {
	["base"] = {["1"] = "말씀 드린대로 결계를 뚫었다고해도 안심할 수 없어요. 저희 머쉬킹 왕국의 성은 외부에서 침입이 절대 불가능하게끔 되어 있어서 침투가 쉽지 않을 겁니다. 음.. 일단 한번 성벽 외부쪽을 조사해 주시지 않겠습니까?"},
	["yes"] = {["1"] = "버섯 숲을 지나 #b선택의 갈림길#k에서 성쪽으로 가시면 됩니다. 그럼 부탁 드립니다."},
	["no"] = {["1"] = "그래요? 흐음 어떤 다른 뽀죡한 수가 있으신 가요? 그런게 아니라면 다시 찾아와 주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "흐음 역시 그렇군요. 출입문 등은 철저하게 막아 놓았군요."},
	["yes"] = {["1"] = "여튼 수고 많으셨습니다."},
	["stop"] = {
		["default"] = {["1"] = "아직 성벽을 충분히 조사하지 않으신 것 같군요. 성벽을 조사해 주세요."},
	},
}
return nTable
end