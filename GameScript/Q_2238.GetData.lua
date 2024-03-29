return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061014,
	["startscript"] = "q2238s",
	["lvmin"] = 50,
	["quest"] = {{["id"] = 2237, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1061015,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 50000,
}
nTable["info"] = {
	["name"] = "쪽지의 주인은?",
	["area"] = 30,
	["1"] = "무영과 대화하던 도중에 갑자기 알 수 없는 곳으로 이동해 버렸다. 갑자기 눈 앞에 주니어 발록이 나타났다. 주니어 발록을 퇴치하자.",
	["2"] = "무영과 대화하던 도중에 갑자기 알 수 없는 곳으로 이동해 버렸다. 갑자기 눈 앞에 주니어 발록이 나타났다. 주니어 발록을 퇴치하자 트리스탄의 영혼이 나타났고, 그로부터 과거의 이야기를 들을 수 있었다.",
	["parent"] = "버려진 쪽지",
	["order"] = 2,
	["summary"] = "트리스탄의 무덤으로 들어가서 주니어 발록을 무찌르고 트리스탄의 영혼과 대화하자.",
	["rewardSummary"] = "경험치 50,000\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "글쎄 난 주인이 누군지 모르겠는데?"},
	["yes"] = {["1"] = "앗! 이봐!"},
	["no"] = {["1"] = "정신차리라구."},
}
nTable["say1"] = {
	["base"] = {["1"] = "안녕하시오. 젊은 모험가여...", ["2"] = "내가 불러낸 주니어발록의 허상을 용감하게 물리치다니...진정한 용기를 가진 자로군. 놀라지 마시오. 그대의 세상과 나의 세상은 서로 만날 수 없는 곳이니까...그대가 나를 두려워할 이유도...내가 그대를 피해야할 이유도 존재하지 않는다오.", ["3"] = "나의 이름은 트리스탄이오. 십수년 전 이 곳에서 발록과 함께 잠들었죠. 하지만 어둠의 마왕 발록의 힘은 죽음으로도 정화될 수 없는 것이 었다오. 그 당시 혈기 넘치는 젊은 모험가 만지는 그 사실을 깨닫고, 나의 영혼의 힘을 빌어 발록을 봉인했다오.", ["4"] = "하지만 시간은 흐르고 흘러 봉인의 힘은 약해지고 어둠의 마왕 발록은 부활을 준비하고 있소. 젊은 모험가여... 그대가 부디 마왕의 손으로부터 메이플월드를 지켜내길 바라오... 부디..."},
	["stop"] = {
		["npc"] = {["1"] = "쪽지의 주인이 누군지 난 정말 몰라."},
	},
}
return nTable
end