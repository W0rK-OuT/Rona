return function (self) 
local nTable = {}
nTable["check0"] = {
	["lvmin"] = 70,
	["npc"] = 2082004,
	["quest"] = {{["id"] = 3723, ["state"] = 2}, {["id"] = 3722, ["state"] = 2}, {["id"] = 3721, ["state"] = 2}, {["id"] = 3720, ["state"] = 2}, {["id"] = 3719, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2082004,
	["mob"] = {
		[1] = {["id"] = 7120101, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 90000,
	["nextQuest"] = 3725,
}
nTable["info"] = {
	["name"] = "시간의 파수꾼 넥스",
	["area"] = 41,
	["parent"] = "2099년의 항만",
	["order"] = 1,
	["0"] = "시간여행자 앤디가 두 번째 시간여행을 시작하기 전에 해주 말이 있다고 한다.",
	["1"] = "시간여행자 앤디는 두 번째 시간으로 이동하기 위해서는 테라고목나무에 사는 문지기 넥스의 시험을 통과해야 한다고 알려주었다. 테라고목나무 속으로 들어가서 시간의 문지기 넥스의 시험을 통과해야한다.",
	["2"] = "시간의 문지기 넥스의 두 번째 시험을 통과하고 시간을 이동할 수 있는 자격을 얻었다. 이제 2099년 한밤의 항만으로 이동할 수 있다. 시간여행자의 회중시계를 가지고 타임 게이트로 이동하자.",
	["demandSummary"] = "#o7120101# #a37241#\r\n",
	["rewardSummary"] = "경험치 90,000\r\n'밝혀지지 않은 과거의 진실' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "두 번째 시간여행을 위해서는 다시 한번 넥스의 시험을 통과해야 해. 방심하지 않길 바래. 이번에 만나게 될 넥스는 지난 번보다 더 강할테니까 말야."},
	["yes"] = {["1"] = "넥스를 물리치고 오면, 2099년으로 이동할 수 있는 타임 게이트가 열리게 될 거야."},
	["no"] = {["1"] = "시간의 문지기인 넥스를 쓰러트리지 않고서는 시간여행의 자격을 얻을 수 없어."},
}
nTable["say1"] = {
	["base"] = {["1"] = "넥스의 두 번째 시험을 통과했군. 그렇다면 타임 게이트를 통해 2099년으로 갈 수 있는 자격을 획득하게 된거야. 당신은 생각보다 훨씬 잘 하고 있어."},
	["yes"] = {["1"] = "시간여행자의 회중시계를 가지고 타임 게이트로 가봐."},
	["stop"] = {
		["mob"] = {["1"] = "테라고목나무 안에 살고 있는 시간의 문지기 넥스의 시험을 통과하고 와."},
	},
}
return nTable
end