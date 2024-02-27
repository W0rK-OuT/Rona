return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041004,
	["lvmin"] = 35,
}
nTable["check1"] = {
	["npc"] = 2041004,
	["mob"] = {
		[1] = {["id"] = 3210208, ["count"] = 20}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 8000,
	["item"] = {
		{["id"] = 2000011, ["count"] = 100}
	},
}
nTable["info"] = {
	["name"] = "핼리오스탑 청소",
	["0"] = "핼리오스탑의 통행이 허가되면서 늘어난 #o3210208# 때문에 #p2041004#이 골머리를 앓고 있다는데…",
	["1"] = "루디브리엄의 경비원 #p2041004#은 최근 통행이 허가 된 핼리오스탑에 얼룩무늬 쥐인 #b#o3210208##k들의 수가 많아지면서 통행을 방해하고, 엘리베이터 시설에 피해를 주고 있다면서 #o3210208#의 수를 줄여달라는 부탁을 했다.\n\n#o3210208#  #r#a32411#",
	["2"] = "루디브리엄의 경비원 #p2041004#의 부탁으로 핼리오스탑에 출현해서 통행을 방해하고 엘리베이터 시설을 망가트리는 얼룩무늬 쥐인 #o3210208# 20마리를 잡아줬다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "정말이지 해도해도 일이 끝이 없군요. 루디브리엄성이 규모가 크다보니까 하루에도 수십 건씩 크고 작은 문제가 발생하고 있답니다. 이번에는 최근 통행이 허가 된 핼리오스탑에서 문제가 생겼다는 연락이 왔어요. ", ["2"] = "그런데 지금 장난감 병정들은 모두 에오스탑에 파견되어 있어서 핼리오스탑으로 보낼 인력이 없네요. 보아하니 모험을 즐기시는 것 같은데 부탁 하나 드려도 될까요?"},
	["yes"] = {["1"] = "루디브리엄성 동쪽에 자리 잡은 핼리오스탑은 에오스탑과 함께 루디브리엄성을 지탱하는 중요한 탑이랍니다. 이 탑에 #b#o3210208##k라는 쥐가 서식하고 있는데, 그 수가 점점 불어나서 핼리오스탑 엘리베이터 시설을 망가트리고 있다고 하는군요", ["2"] = "엘리베이터의 안전과도 관련된 아주 중요한 문제랍니다. 핼리오스탑으로 가서 #b#o3210208# 20마리#k를 퇴치해주세요."},
	["no"] = {["1"] = "내키지 않으신 가요? 별로 어려운 일은 아닌데… 혹시라도 생각이 바뀌신다면 다시 절 찾아와주세요. 말씀드렸다시피 핼리오스탑의 안전과 관련된 중요한 문제랍니다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "훌륭히 일을 처리하셨더군요. 주민들에게 들었답니다. 핼리오스탑의 #o3210208#가 눈에 띄게 줄어들었다고 하더군요. 수고하셨어요. 정말 대단한 실력이군요."},
	["yes"] = {["1"] = "이건 루디브리엄에서 당신의 노고에 보답하기 위해 드리는 보상입니다. 여행을 하실 때 요긴하게 쓰시길 바래요. "},
	["stop"] = {
		["mob"] = {["1"] = "#o3210208#떼가 더욱 극성을 부리기 시작했다는 군요. 어서 핼리오스탑으로 가보세요. 당신의 도움이 필요하답니다."},
	},
}
return nTable
end