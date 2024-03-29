return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052123,
	["lvmin"] = 35,
	["lvmax"] = 50,
	["quest"] = {{["id"] = 2272, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052123,
	["item"] = {{["id"] = 4032508, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 13200,
	["item"] = {
		{["id"] = 4032508, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "비밀의 레시피",
	["area"] = 30,
	["0"] = "부탁을 들어주면 흔쾌히 리셉션을 맡겠다던 #b동동#k.. 탁을 들어주자 “파티고 뭐고”라고 헛소리를 헤대며 소리를 질러 대는데.. 과연 그에게 무슨 일이 벌어진 것일까?",
	["1"] = "레시피를 잃어버렸다고? 비법이 새나가기 전에 어서 레시피를 찾아다 주자.\r\n백화점 3~4층의 인형 뽑기들을 사냥하다 보면 나오겠지?\r\n",
	["2"] = "드디어 칠성급 쉐프 동동을 섭외했다. 기쁜 소식을 #b라나#k에게 전하자",
	["demandSummary"] = "#i4032508:# #t4032508:# #c4032508# / 1\r\n",
	["rewardSummary"] = "경험치 13,200\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "아악! 큰일이야. 이를 어쩐다. 비밀이 새나가면 정말 큰일인데…. 이봐 자네 그렇게 머뭇거리지 말고 나를 도와 주는 건 어떻겠나?"},
	["yes"] = {["1"] = "글쎄 나의 요리의 비법이 담긴 비밀의 레시피를 잃어버렸지 뭔가. 아무래도 얼마 전 커닝스퀘어 3~4층에서 정신 없이 인형뽑기를 하다가 잃어버린 것 같은데.. 비밀이 새 나가기 전에 #b비밀의 레시피#k를 찾아와 주게나."},
	["no"] = {["1"] = "내 비밀 레시피가 없다면 #b혁이#k 공연의 리셉션을 맡고 싶어도 맡아 줄 수 없다네..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "드디어 내 레시피를 찾아왔나?"},
	["yes"] = {["1"] = "맞아. 나의 소중한 레시피. 정말 고맙네. 약속대로 혁이의 리셉션은 내가 맡겠네. 대박기획 대표 #b라나#k에게 내 뜻을 전하게나."},
	["stop"] = {
		["item"] = {["1"] = "에스컬레이터를 타고 백화점 3~4층에있는 인형 들을 없애고,나의 소중한 #b#t4032508##k를 찾아와 주게나."},
	},
}
return nTable
end