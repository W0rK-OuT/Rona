return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040002,
	["lvmin"] = 33,
	["quest"] = {{["id"] = 3230, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2040029,
	["item"] = {{["id"] = 4031094, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031094, ["count"] = 1}
	},
}
nTable["act1"] = {
	["nextQuest"] = 3232,
	["item"] = {
		{["id"] = 4031094, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "망가진 시계탑",
	["parent"] = "버려진 공간으로의 배달",
	["order"] = 1,
	["0"] = "에오스탑에 있는 장난감 병정 올슨을 찾아가보자.",
	["1"] = "에오스탑 100층의 장난감병정 올슨으로부터 인형의 집을 부수고 얻은 #b시계추#k를 루디브리엄 시계탑 안의 버려진 공간에 있는 #b괘종시계#k에게 전해주라는 부탁을 받았다. 괘종시계에게 주면 그가 시계탑을 고칠 수 있을 거라고…",
	["2"] = "잃어버린 시간의 어딘가에 서있는 괘종시계를 찾아냈다. 하지만 곧 멈출 것 처럼 힘이 없어보였다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "오랜만이로군요. 다행스럽게도 그 이후로 지금까지 이 방에서 별다른 수상한 점을 발견하지 못하고 있습니다. 이 모든것이 당신의 덕입니다. 그런데 또 한가지 부탁드리고 싶은 것이 생겼는데 한 번 들어 보시겠어요?"},
	["yes"] = {["1"] = "고맙습니다. 일전에 #b#t4031094##k를 구해다 주신 일은 감사하게 생각하고 있습니다. 그런데 이 #b#t4031094##k를 시계탑에 올바르게 끼워넣을 수 있는 녀석이 지금 먼 곳으로 출장을 나가 있는 상황입니다. 하루 빨리 #b#p2040029##k를 찾아내어 #t4031094#를 전해 주어야 합니다.", ["2"] = "루디브리엄에 알아본 결과 #b#p2040029##k는 현재 루디브리엄 시계탑 깊은 곳인 #b버려진 공간#k으로 가 있다는 정보입니다. 그곳에는 강한 몬스터들이 많아 위험하겠지만 루디브리엄을 위해 하루 빨리 녀석을 찾아내어 제가 드리는 #b#t4031094##k를 전해주세요. 그럼 부탁드립니다."},
	["no"] = {["1"] = "흐음... 지금은 많이 바쁘신 모양이죠? 하지만 빨리 하지 않으면 루디브리엄의 시계탑이 언제까지고 저렇게 멈춰있을 수 밖에 없을텐데요... 바쁘시겠지만 나중에라도 시간이 되신다면 꼭 다시 저를 찾아와 주세요."},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "제가 드린 #b#t4031094##k를 루디브리엄 시계탑 깊은 곳인 #b버려진 공간#k에 있는 #b#p2040029##k에게 전해주세요. 녀석만이 이 부품을 원래 자리로 되돌려 놓을 수 있답니다. 가는 길에 사나운 몬스터들이 있을지도 모르니 미리 단단히 준비해 두시는 것이 좋을 거에요. 그럼 부탁드립니다!"},
		["item"] = {["1"] = "저에게 무슨 용무라도? 올슨이 보냈다고요? 그럼 #b#t4031094##k를 가지고 왔겠군요. 근데 #t4031094#를 어디있지요? 잃어버린거라면 다시 올슨에게 가서 받아 오세요."},
	},
	["ask"] = {"이런 중요한 물건을 잃어버리시다니... 제가 운 좋게 찾아서 다행입니다. 앞으로는 잃어 버리지 마세요."},
}
return nTable
end