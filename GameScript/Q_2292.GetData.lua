return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052006,
	["normalAutoStart"] = 1,
	["lvmin"] = 35,
	["lvmax"] = 50,
}
nTable["check1"] = {
	["npc"] = 1052117,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2400,
}
nTable["info"] = {
	["name"] = "혁이의 소원",
	["area"] = 30,
	["0"] = "커닝시티 중앙에 위치한 지하철 역에서 근무하는 웅이. 근심이 생겼다고 하는데…\r\n#b웅이#k에게 가보도록 하자.\r\n",
	["1"] = "웅이는 같이 근무하는 혁이의 소원이 꼭 이루어 졌으면 한다. 대체 혁이는 누구지?\r\n개찰구로 들어가서 커닝 스퀘어 역에 가보자.\r\n",
	["2"] = "혁이는 근무 중이니 잠시 기다려 달라고 했다.",
	["autoStart"] = 1,
	["rewardSummary"] = "경험치 2,400",
}
nTable["say0"] = {
	["base"] = {["1"] = "아… 안타까워요, 너무너무 안타까워요. 제 이야기를 좀 들어보시겠어요?"},
	["yes"] = {["1"] = "저랑 같이 근무를 하고 있는 혁이라는 아이가 있어요. 혁이에게는 꼭 이루고 싶은 소원이 있습니다. 그 아이의 재능이라면 제가 조금만 도와주면 될 것 같지만, 보시다시피 저는 근무 중이라 자리를 뜰 수 없습니다. ", ["2"] = "저 대신 혁이를 만나서 소원을 들어 주세요. #b혁이#k는 제가 있는 커닝시티 지하철의 개찰구를 통해 들어가 #b커닝 스퀘어역#k으로 가면 만나실 수 있습니다."},
	["no"] = {["1"] = "아, 안타깝군요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "안전! 지금은 다른 분의 분실물을 찾는 중이니 잠시만 기다려주세요!"},
	["stop"] = {
		["npc"] = {["1"] = "#b혁이#k는 개찰구를 통해 들어가 #b커닝 스퀘어역#k으로 가면 만나실 수 있습니다."},
	},
}
return nTable
end