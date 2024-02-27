return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041026,
	["quest"] = {{["id"] = 3248, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2041026,
	["mob"] = {
		[1] = {["id"] = 4230113, ["count"] = 20},
		[2] = {["id"] = 3230306, ["count"] = 30},
		[3] = {["id"] = 4230114, ["count"] = 40},
		[4] = {["id"] = 4230115, ["count"] = 50},
		[5] = {["id"] = 5220003, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 151500,
}
nTable["info"] = {
	["name"] = "작전 2단계 : 몬스터 퇴치하기",
	["parent"] = "시계탑 몬스터 소탕작전",
	["order"] = 2,
	["1"] = "작전 2단계는 1단계에 비해 훨씬 간단했다. 바로 몬스터 퇴치! #r#o4230113##k, #r#o3230306##k, #r#o4230114##k, #r#o4230115##k, 거기에 #r#o5220003##k까지 골고루 퇴치해야하니, 그리 편한 임무는 아니지만... 어쨌든 어서 몬스터들을 퇴치해 보자. \n\n#o4230113# #r#a32491##k \n#o3230306# #r#a32492##k \n#o4230114# #r#a32493##k \n#o4230115# #r#a32494##k \n#o5220003# #r#a32495##k ",
	["2"] = "모든 몬스터를 퇴치하고 #p2041026#에게 보고했다. 숫자는 많지 않은데 종류가 많다보니, 이것도 쉽지 않을걸...?",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "작전 2단계는 몬스터 퇴치!...인게 당연하겠지? 알을 회수했으니, 이제 본격적으로 몬스터를 퇴치해서 시계탑의 몬스터를 소탕하자구. 어때? 준비되었어?"},
	["yes"] = {["1"] = "그럼 어서 가서 몬스터를 퇴치해줘. #r#o4230113# 20마리#k, #r#o3230306# 30마리#k, #r#o4230114# 40마리#k, #r#o4230115# 50마리#k, 거기에 #r#o5220003#까지 1마리#k 사냥하면 어느 정도 탑이 정리되지 않을까? 자, 그럼 어서 가서...", ["2"] = "응? 그 표정은 뭐야? 몬스터가 너무 많아서 못 외우겠다고? 그럼 다시 이야기해 줄까...가 아니라, 그럼 퀘스트 진행중 정보창을 열어서 보면 되잖아? 자, 어서 가서 작전을 수행해줘. 그럼 수고!"},
	["no"] = {["1"] = "흠. 아직 준비가 덜 되었다니... 배라도 고픈 거야? 햄버거라도 먹을래? 아니, 준다는 건 아니고. 네가 직접 사 먹으라고..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "모든 몬스터를 퇴치하고 온 거야? 우왓! 대단하잖아? 아니, 정말로 대단해! 생각보다 훨씬 빨랐어. 우리 대원들도 이렇게 빨리 하긴 어려울 텐데... 훌륭해! 정말 고마워! 이번 일로, 분명 시계탑의 몬스터가 어느 정도 정리되었을 거야!"},
	["stop"] = {
		["mob"] = {["1"] = "아직도 모든 몬스터를 다 퇴치하지 못한 거야? 혹시 어떤 몬스터였는지 까먹은 건가? 휴우... 그럼 다시 말해줄 테니까 잘 들어. #r#o4230113# 20마리#k, #r#o3230306# 30마리#k, #r#o4230114# 40마리#k, #r#o4230115# 50마리#k, #r#o5220003# 1마리#k야. 자, 기억했지?"},
	},
}
return nTable
end