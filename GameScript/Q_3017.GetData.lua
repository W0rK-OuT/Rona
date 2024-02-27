return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020006,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3016, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2030004,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3500,
	["nextQuest"] = 3018,
}
nTable["info"] = {
	["name"] = "숨겨진 작은 무덤",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 14,
	["1"] = "헬라의 펜던트를 전해받은 제이드는 애써 기쁨을 감추며 헬라의 안부를 물어 보았다. 제이드가 말한 작은 무덤은 설원 어딘가에 있는 듯 한데...",
	["2"] = "작은 무덤... 누구도 찾지 않는 볼품없는... 이런 곳에 고대의 책의 열쇠가 있을까...",
	["area"] = 33,
	["summary"] = "제이드가 말한 설원의 작은 무덤을 찾아가 보자.",
	["rewardSummary"] = "경험치 3,500\r\n'오래되어 보이는 반지' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "흠... 헬라가 저에게 #b#t4031056##k에 대해 물어보라고 했단 말씀입니까? 설원 어딘가에서 잃어버렸다는 기록이 있었다고요... 흐음... 맞아! 몇 일 전 마을 주변 지리를 조사하던 중 설원 깊은 계곡에서 #b작은 무덤#k을 본 적이 있습니다. 혹시 그 무덤이 열쇠가 되진 않을까요..."},
	["yes"] = {["1"] = "어떤 무덤인지 알아보기 위해 가까이 가려 해 봤지만 주변에 워낙 사나운 몬스터들이 많아서 포기하고 돌아와 버렸습니다... 하지만 당신이라면 어떻게든 들어가서 자세히 조사해 볼 수도 있겠죠. 무덤을 발견한 장소는 #b설원 깊은 계곡 안쪽#k입니다. 그럼 부디 당신이 무사하시길 빌겠습니다."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "몇 일 전 마을 주변 지리를 조사하던 중 설원 깊은 계곡에서 #b작은 무덤#k을 본 적이 있습니다. 어떤 무덤인지 알아보기 위해 가까이 가려 해 봤지만 주변에 워낙 사나운 몬스터들이 많아서 포기하고 돌아와 버렸습니다... 혹시 그 무덤이 열쇠가 되진 않을까요... 무덤을 발견한 장소는 #b설원 깊은 계곡 안쪽#k입니다. 그럼 부디 당신이 무사하시길 빌겠습니다."},
		["quest"] = {["1"] = "무덤 속에는 약간의 이끼와 누군가의 시체로 보이는 유골이 있습니다. 안쪽을 자세히 들여다 봤지만 특별한 것은 발견하지 못했습니다."},
	},
}
return nTable
end