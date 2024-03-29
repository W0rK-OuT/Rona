return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052120,
	["lvmin"] = 35,
	["lvmax"] = 50,
	["quest"] = {{["id"] = 2287, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1052120,
	["item"] = {{["id"] = 4000538, ["count"] = 1}},
	["mob"] = {
		[1] = {["id"] = 4300013, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 48500,
	["nextQuest"] = 2293,
	["item"] = {
		{["id"] = 4000538, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "표절은 안돼",
	["area"] = 30,
	["0"] = "작곡료를 지불했는데도 신곡을 주지 않았다. 대체 왜 머뭇거리는 걸까? #b노마에#k에게 무슨 일이 있는 건지 물어보자.",
	["1"] = "마음대로 노마에의 곡을 연주하고 있다고? 락 스피릿을 퇴치하고, 마지막으로 연주한 곡을 잘 듣고 오자.\r\n\r\n연주를 잘 들으려면 시스템 옵션에서 효과음을 조금 크게 설정해 두는게 좋겠지?",
	["2"] = "노마에의 요청대로 락 스피릿을 없앴다. 하지만 또 작곡 노트는 내놓지 않고 꾸물거린다. 더 이상 시간을 지체할 수 없다.  #b노마에#k에게 신곡을 받자.",
	["demandSummary"] = "#i4000538:# #t4000538:# #c4000538# / 1\r\n#o4300013# #a22881#\r\n",
	["rewardSummary"] = "경험치 48,500",
}
nTable["say0"] = {
	["base"] = {["1"] = "제 신곡.. 신곡이 더러워지고 있어요.\r\n#L0##b신곡이 더러워 지다니요? 대체 그게 무슨 소린가요?#l\n#k", ["2"] = "커닝 스퀘어 어딘가에 있는 락 스피릿! 그 요괴가 내 신곡을 마음대로 연주해대고 있어요. 이렇게 되면 제가 혁이에게 준 신곡이 표절 시비에 휘말릴 수도 있어요.\r\n#L0##b표절이라뇨! 그런 건 상상조차 할 수 없어요! 락 스피릿! 그 나쁜 놈을 제가 처치하겠어요!#l\n#k", ["3"] = "그게 진심인가요?"},
	["yes"] = {["1"] = "락 스피릿! 그 놈은 사람이 드나들지 않는 으슥한 곳. 예를 들어 공사를 준비 중이라거나... 그런 곳에 숨어 있을 거에요. 아마 커닝 스퀘어 안에 있는 공익근무요원 준이에게 부탁하면 그곳에 갈 수 있을 거에요. ", ["2"] = "그 곳에 가서 #r락 스피릿#k을 없애고, #b락 스피릿의 악보#k를 뺏어와 주세요. 그리고 그 요괴의 악보를 알아 볼 수 없을지도 모르니, 꼭 마지막으로 연주하는 곡을 잘 듣고 와야해요. #b락 스피릿의 마지막 연주를 잘 들으려면 시스템 옵션에서 효과음을 조금 크게 설정해 두는게 좋을거에요.#k"},
	["no"] = {["1"] = "아무리 그래도 공짜로 곡을 줄 수는 없어요. "},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "락 스피릿을 물리치셨군요? 그의 악보를 주세요."},
	["yes"] = {["1"] = "역시 그의 악보. 알아 볼 수가 없군요.혹시 락 스피릿이 마지막으로 연주한 곡. 기억하시나요? 뭐 기억 못하시더라도 약속대로 제 작곡 노트는 드릴테지만요...앗, 노트를 어디다 뒀더라?"},
	["stop"] = {
		["item"] = {["1"] = "#r락 스피릿#k을 없애고 #b락 스피릿의 악보 1개#k를 가져다 줘요. 그 요괴가 죽을 때 연주하는 노래도 꼭 잊지 말고 기억해 와야 해요."},
		["mob"] = {["1"] = "#r락 스피릿#k을 없애고 #b락 스피릿의 악보 1개#k를 가져다 줘요. 그 요괴가 죽을 때 연주하는 노래도 꼭 잊지 말고 기억해 와야 해요."},
	},
}
return nTable
end