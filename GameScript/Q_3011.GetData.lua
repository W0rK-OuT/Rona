return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2032001,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3010, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2032000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2000,
	["nextQuest"] = 3012,
}
nTable["info"] = {
	["name"] = "수정을 복원시킬 방법",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 8,
	["1"] = "아니나 다를까... 깨진 검은수정을 본 스피루나는 노발대발 하면서 내탓이라고 호통만 칠 뿐이었다. 스피루나와 함께 살고 있는 저 여자에게 도움을 구해 보는건 어떨까?",
	["2"] = "버럭 소리를 지르는 스피루나... 어떻게 하지? 옆의 여자는 태연해 보이는데... 이럴 때 어떻게 해야 하는지 알고 있지 않을까? ",
	["area"] = 33,
	["summary"] = "스피루나의 집에 살고 있는 정체불명의 여자아이와 대화하자.",
	["rewardSummary"] = "경험치 2,000\r\n'조수의 조언' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "오오... 나의 소중한 #b검은수정#k을 찾은 모양이로군. 아니 이게 어찌된 일이지? 내... 검은수정이 깨졌잖아...! 이런 괘씸한 녀석! 수정을 깨뜨려 놓고도 무사할 줄 아느냐! 꼴도 보기 싫으니 어서 내 눈앞에서 사라져 버려! 으으... 이 수정을 고칠 방법이 필요한데... 조수에게 맡겨야 하나..."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "무슨 염치로 내 앞에 나타난 게냐! 네놈이 내 소중한 #b검은수정#k을 깨드렸다는 걸 잊어버린 건 아니겠지? 덕분에 연구가 반 년은 늦어지게 생겼단 말이야! 요정들의 그 물건만 있다면 간단하겠지만, 요정에게 부탁하는 건 죽기보다 싫고... 조수에게 맡겨야 하나... 으으..."},
	},
}
return nTable
end