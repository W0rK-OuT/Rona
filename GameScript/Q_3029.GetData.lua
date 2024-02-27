return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1052001,
	["lvmin"] = 55,
	["quest"] = {{["id"] = 3028, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2020005,
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031054, ["count"] = 4}
	},
}
nTable["act1"] = {
	["exp"] = 5430,
	["nextQuest"] = 3030,
	["item"] = {
		{["id"] = 4031054, ["count"] = -4}
	},
}
nTable["info"] = {
	["name"] = "한곳에 모은 지도조각",
	["parent"] = "고대의 책을 찾아서...",
	["order"] = 26,
	["1"] = "빅토리아 아일랜드에서 네 명의 현자를 만나 고대의 책이 있는 곳이 표시되었을 것으로 추정되는 #b4개의 지도 조각#k을 얻었다. 알케스터에게 돌아가 볼까?",
	["2"] = "알케스터라면 네 개의 지도조각을 어떻게 하면 되는지 알고 있겠지.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네라면 내 기대를 져버리지 않을 거라고 믿고 있었네. 이걸로 소진했던 힘을 다시 회복할 수 있게 되었군. 그럼 약속했던 대로 #b#t4031056##k을 찾는데 단서가 되는 물건을 넘겨주지. 그 전에 아이템 기타창에 빈 칸이 하나 이상 있는지 미리 확인하라고."},
	["yes"] = {["1"] = "이걸로 4장의 지도 조각을 모두 모았군 그래. 하지만 조각나 있는 상태로는 아무것도 할 수 없겠지. 알케스터라고 했지? 그 학자라면 이 조각들을 하나로 합치는 방법을 알고 있을지도 모르니까 그에게 돌아가 보는게 좋겠군. 아참... 그리고 자네가 가진 #b#t4031053##k는 중요한 열쇠가 될지도 모르니 소중히 간직하게나."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "#b#t4031056##k이 숨겨진 곳을 나타내는 지도는 모두 네 조각이 난 채로 우리 4명의 현자에게 맡겨졌지. 하지만 마냥 숨겨둘 수 만은 없는일. 자네가 찾아내어 그 책을 봉인해 주게나. 자 그럼 그 지도조각을 가지고 엘나스에 있는 학자에게 돌아가 보게나."},
	},
}
return nTable
end