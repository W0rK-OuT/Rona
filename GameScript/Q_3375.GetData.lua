return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2112004,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3374, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2112003,
	["item"] = {{["id"] = 4031778, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031778, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 100,
	["item"] = {
		{["id"] = 4031778, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "로미오의 연애편지",
	["parent"] = "로미오의 연애편지",
	["order"] = 2,
	["1"] = "로미오는 완성한 편지를 #b줄리엣#k에게 전해 달라고 말했다. 이거 점점 로미오와 줄리엣 사이에서 사랑의 심부름꾼이 되는 기분인데? ...이런 이상한 커플의 심부름꾼 따위는 되고 싶지 않아... ",
	["2"] = "로미오의 편지를 받은 줄리엣은 기쁨의 눈물을 글썽였다. 그 편지 어디에서 감동을 받았는지, 이해가 가질 않지만...",
	["area"] = 47,
	["sortkey"] = "35",
}
nTable["say0"] = {
	["base"] = {["1"] = "보세요, 모험가님! 드디어 편지를 완성했답니다. 이걸 쓰려고 종이를 몇 개를 버렸는지... 후후훗. 이 편지를 받으면 줄리엣도 기뻐해 주겠죠? 자... 모험가님, 어서 편지를 #b줄리엣#k에게 전해 주세요."},
	["yes"] = {["1"] = "이렇게 줄리엣과의 연애가 잘 되어가고 있는 건 다 모험가님 덕분입니다. 이 은혜는 절대 잊지 않을게요!"},
	["no"] = {["1"] = "...싫으시다고 말씀하실 줄이야... 그럼 이 편지는 대체 누가 전달해 준단 말입니까? 하늘의 제비가? 아니면 택배 배달원 듀이가? 아뇨, 모험가님 외에는 도와줄 사람이 없답니다! 제발 도와주세요!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "어머, 모험가님. 이번에는 무슨 일이신가요? 혹시 이번에도 로미오가...? 로미오가 이번에는 편지를 전해달라고 했다고요?"},
	["yes"] = {["1"] = "아아, 로미오가 이렇게 생각하고 있었다니... 정말 몰랐어요. 너무 기뻐서 마치 꿈을 꾸는 것 같네요. 전해주셔서 정말 감사 드립니다, 모험가님... "},
	["stop"] = {
		["npc"] = {["1"] = "아직 줄리엣에게는 안 가신 건가요? 그녀가 편지를 받으면 어떤 반응을 보일지 너무도 궁금하군요."},
		["item"] = {["1"] = "어머, 모험가님? 여기까지는 웬일이세요? 혹시 로미오가...? 아닌가요?"},
	},
	["ask"] = {"넷? 줄리엣에게 줄 편지를 잃어버리셨다고요? 아, 그거라면 걱정하지 마세요. 몇 번이고 문장을 곱씹어 쓰느라, 이미 다 외워버렸거든요. 얼마든지 다시 써서 드리겠습니다."},
}
return nTable
end