return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1056000,
	["lvmin"] = 54,
	["subJobFlags"] = 2,
	["normalAutoStart"] = 1,
	["quest"] = {{["id"] = 2369, ["state"] = 2}},
	["job"] = {400, 410, 420, 430, 411, 421, 431, 412, 422, 432, 433, 434},
}
nTable["check1"] = {
	["npc"] = 2020011,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["nextQuest"] = 2373,
	["exp"] = 70000,
}
nTable["info"] = {
	["name"] = "여덟 번째 임무 - 알현",
	["area"] = 10,
	["type"] = "[필수]",
	["showEffect"] = "0",
	["0"] = "설희가 부탁할 것이 있다고 하는데...",
	["1"] = "겨우 충격에서 벗어나 정신을 차린 설희는 이제 듀얼블레이드의 가야할 방향을 정해야 한다고 말하면서 음지에서 자란 듀얼블레이드가 엘나스의 도적 장로 #b아레크#k에게 인정을 받아야 모두가 인정하는 존재가 될 수 있다고 했다. 자신의 사절로써 엘나스에 있는 아레크님을 만나뵙고 듀얼블레이드가 정식으로 인정받을 수 있는 길을 알아오라고 하는데...",
	["2"] = "겨우 충격에서 벗어나 정신을 차린 설희는 이제 듀얼블레이드의 가야할 방향을 정해야 한다고 말하면서 음지에서 자란 듀얼블레이드가 엘나스의 도적 장로 #b아레크#k에게 인정을 받아야 모두가 인정하는 존재가 될 수 있다고 했다. 자신의 사절로써 엘나스에 있는 아레크님을 만나뵙고 듀얼블레이드가 정식으로 인정받을 수 있는 길을 알아오라고 하는데...듀얼블레이드가 아레크의 인정을 받는 방법은 무엇일까?",
	["autoStart"] = 1,
	["parent"] = "여덟 번째 임무 - 알현",
	["order"] = 1,
	["rewardSummary"] = "경험치 70,000\r\n'아레크의 시험' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "제가 너무 오랫동안 방황을 했던 것 같군요. 사실 지금도 무엇이 진실인지 너무 혼란스럽지만...당신이 가고 난 후에 여러가지로 생각을 해봤답니다. 하지만 역시 아직 다크로드와 만날 수는 없을 것 같아요. 그리고 듀얼블레이드의 앞날을 생각해 보았답니다.", ["2"] = "그동안 다크로드를 몰아내는 것만 생각하느라 난 우리들이 음지에서 인정받지 못하는 것을 모른채 했어요. 하지만 이제 듀얼블레이드도 모두에게 인정받아야할 시점이 된 것 같아요. 지금 바로 #b엘나스#k 장로의 관저에 계신 #b아레크#k님을 찾아가도록 하세요."},
	["yes"] = {["1"] = "그 분이 우리들을 인정해 준다면 듀얼블레이드에게 새로운 미래가 생길 거예요. 당신이 나의...우리의 사절로 그 분을 만나러 가주세요."},
	["no"] = {["1"] = "듀얼블레이드로써 당신도 방황을 하고 있는 건가요? 좋아요. 당신에게 시간을 드리도록 하죠. 방황이 끝나면 돌아올거라고 믿어요..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "낯선 익숙함이군. 너는 누구지?\r\n#L0##b저는 모든 듀얼블레이드를 대표해서 왔습니다.#l\n#k", ["2"] = "듀얼블레이드라...너희들에 대해서는 나도 알고 있다. 가장 이질적인 도적...증오의 그늘에서 자란 자들...그래 무슨 일로 나를 찾아온 거지?\r\n#L0##b당신에게 우리의 존재를 인정받고자 찾아왔습니다.#l\n#k", ["3"] = "나의 인정을 받는다...라...너희들은 정통계승자인 다크로드와 반목하고 있지 않았던가? 그런 너희들을 어떻게 인정할 수 있겠나.\r\n#L0##b모든 것은 오해에서 비롯된 것이었습니다. 저희들은 새로운 미래를 개척하기로 했습니다. 다크로드와의 반목도 이제 종지부를 찍을 것입니다. 모든 오해는 풀렸습니다.#l\n#k", ["4"] = "새로운 미래라... 흥미롭군. 좋아 기회를 주도록 하지."},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["2"] = {["answer"] = "1", ["flip"] = "1"},
		["npc"] = {["1"] = "그 분이 우리들을 인정해 준다면 듀얼블레이드에게 새로운 미래가 생길 거예요. 당신이 나의...우리의 사절로 그 분을 만나러 가주세요."},
	},
	["ask"] = 1,
}
return nTable
end