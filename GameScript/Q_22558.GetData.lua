return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012003,
	["lvmin"] = 35,
	["quest"] = {{["id"] = 22557, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1012108,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
}
nTable["info"] = {
	["name"] = "골렘이 변해버린 이유",
	["area"] = 7,
	["0"] = "골렘이 변해버린 이유를 심각하게 생각하고 있는 #b스탄 아저씨#k에게 말을 걸어 보자.",
	["1"] = "스탄 아저씨는 어떻게 된 건지 #p1012108#에게 물어보면 힌트를 얻을 수 있을지도 모른다며, #b#p1012108##k에게 혹시 기억나는 건 없는지 물어봐달라고 말했다. 마음 약한 여자애니 조심해서 물어보자.",
	["2"] = "#p1012108#는 이상한 그림이 그려져 있는 문 안에서 골렘들이 튀어나오는 걸 봤다는데...",
	["parent"] = "헤네시스를 지켜라!",
	["order"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "아무리 생각해도 골렘들이 변한 이유를 모르겠군... 역시 다른 사건들처럼 인형과 관계가 있는 건가...? 좀 더 자세한 정황을 파악하려면 역시 당사자인 #p1012108#에게 물어보는 수밖에 없을 것 같구나. ", ["2"] = "#b#p1012108##k에게 가서 어떤 일이 있었는지, 혹시 보거나 기억나는 건 없는지, 있다면 아주 작은 일이라도 상관 없으니 말해 달라고 해다오. 무척 놀랐을 테니 나이가 비슷한 사람이 가서 달래는 게 좋겠지."},
	["yes"] = {["1"] = "마음 약한 여자애이니 조심해서 물어보거라."},
	["no"] = {["1"] = "끄응. 물어보기 싫은 게냐? 너하고는 원래 아는 사이이니 #p1012108#도 편히 대답해줄 것 같은데..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "아... 에반! 전에는 도와줘서 고마웠어. 너무 놀라서 인사도 못하고 있었네... 나는 괜찮냐고? 응. 괜찮아. 다친 데도 없는걸. 너무 놀라긴 했지만. 그런데 여긴 어쩐 일이야?\r\n#L0##b음... 불편하지 않다면 하나만 물어봐도 될까? 혹시 골렘의 사원에서 뭔가 본 거 없어? 특이하게 보였던 거면 아무리 작은 거라도 상관 없으니 말해봐.#l\n#k", ["2"] = "그런 거라면... 음... 원래 그런 건지 아닌지는 잘 모르겠는데, 이상한 인형이 얹혀진 문이 하나 있었어. 그런데 거기에서 골렘들이 마구 튀어 나오더라고. 원래 그런 걸까?\r\n#L0##b그 문에서 골렘이? 그냥 골렘이었어? 아니면 붉은 골렘?#l\n#k", ["3"] = "그냥 골렘은 어떤 거야? 내가 본 건 다 붉은색 골렘 뿐이었는데... 다른 것도 있었나... 아무튼 내가 아는 건 이게 다야. 도움이 되었으면 좋겠네."},
	["yes"] = {["1"] = "그런데 어떻게 이렇게 강해진 거야? 예전에 #p1013101#하고 셋이 놀 때만 해도 이렇게 강하지 않았잖아? 에? 혹시 비밀이야? 알았어 그럼 물어보지 않을게."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["npc"] = {["1"] = "아직 #b#p1012108##k에겐 안 간 건가? 그 애는 안정을 되찾고 평소처럼 마을 안에 있는데..."},
	},
	["ask"] = 1,
}
return nTable
end