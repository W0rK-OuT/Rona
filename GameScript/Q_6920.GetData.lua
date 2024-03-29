return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020010,
	["lvmin"] = 120,
	["job"] = {311, 321},
}
nTable["check1"] = {
	["npc"] = 2081300,
	["item"] = {{["id"] = 4031513, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031513, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 20000,
	["item"] = {
		{["id"] = 4031513, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "레네의 소개장",
	["parent"] = "궁수 궁극의 길",
	["order"] = 1,
	["0"] = "궁수로서의 수련이 한계에 부딪치고 말았다. 이 이상의 경지는 없는 것일까? 3차 전직을 도와주었던 #b#p2020010##k를 찾아가 궁수의 길에 대해 물어보아야겠다.",
	["1"] = "#b#p20200010##k는 더욱 강한 궁수의 길을 찾기 위해서는 미나르 숲의 사제 #b#p2081300##k를 찾아가 보라고 했다.",
	["2"] = "#b#p2081300##k는 궁수 궁극의 힘을 손에 넣기 위한 길을 가르쳐 주겠다고 했다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "무척 오랜만에 보는 것 같습니다. 어느새 부쩍 성장한 당신의 모습을 보니 3차 전직을 하겠다고 나를 찾아왔던 그 때가 떠오르는군요. 당신 안에 감춰져 있던 진실을 발견하신 겁니까. 그렇다면 나를 찾아 온 것에도 분명 이유가 있겠군요. 무슨 일로 날 찾아오셨습니까?\r\n#b#L0# 4차 전직을 하고 싶습니다.#l", ["2"] = "그렇습니까... 당신이 언젠가는 나에게 와서 이런 말을 하게 될 거라고 생각했지요. 하지만 나에게는 당신의 소망을 이뤄줄 힘이 없습니다. 당신의 소망을 이루고 싶다면 #b미나르숲#k으로 가십시오. 그 곳에서 수행을 하고 있는 #b#p2081300##k라면 당신의 소망을 이뤄줄 수 있을지도 모릅니다. 그 분을 찾겠습니까?"},
	["yes"] = {["1"] = "그렇다면 그 분에게 당신을 추천하는 추천장을 써 드리도록 하지요. 당신이 새로운 힘을 얻길 바랍니다."},
	["no"] = {["1"] = "4차 전직을 하고 싶어 나를 찾아온게 아니었습니까? 싫다면 어쩔 수 없겠지요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "무슨 일로 여기까지 온 건가? 젊은 궁수여.\r\n#b#L0# 4차 전직을 하고 싶습니다. #p2020010#님의 추천장도 받아왔습니다.#l", ["2"] = "#b#p2020010##k라면... 엘나스에 있는 그를 말하는 건가? 그가 추천한 사람이라면 당신을 믿어도 될 것 같긴 하다만."},
	["yes"] = {["1"] = "궁수 궁극의 길을 꿈꾸는 젊은 궁수여. 그대에게 꼭 들려줄 이야기가 있다. 진실을 알 준비가 되면 다시 말을 걸도록."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["npc"] = {["1"] = "기억하십시오. 미나르 숲의 사제 #b#p2081300##k입니다. 그를 찾아가십시오."},
		["item"] = {["1"] = "무슨 이유로 여기까지 찾아온 것이지?"},
	},
	["ask"] = {"#b#t4031342##k를 잃어버린 건가? 다시 써주긴 하겠지만 앞으로는 조심하게."},
	["ask"] = 1,
}
return nTable
end