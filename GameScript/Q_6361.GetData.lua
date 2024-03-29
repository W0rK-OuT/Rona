return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1092012,
	["lvmin"] = 120,
	["quest"] = {{["id"] = 6360, ["state"] = 2}},
	["job"] = {512},
}
nTable["check1"] = {
	["npc"] = 2043000,
	["item"] = {{["id"] = 4031870, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031870, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 200000,
	["item"] = {
		{["id"] = 4031870}
	},
}
nTable["info"] = {
	["name"] = "파풀라투스의 열쇠",
	["parent"] = "시공간 변형의 비밀",
	["order"] = 2,
	["1"] = "파풀라투스의 열쇠를 가지고 #b시계탑의 근원#k으로 다시 가보자.",
	["2"] = "여기는 어디지? 누군가가 있다!",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "파풀라투스 열쇠 지금 여기서는 쓸 수 있는 것이 아닌 것 같아요. 다시 시계탑의 근원으로 가면 이 열쇠를 사용할 수 있는 기계같은 것이 있을지도 몰라요. 다시 한 번 시계탑의 근원으로 가주시겠어요?"},
	["yes"] = {["1"] = "#b시계탑의 근원#k에서 열쇠의 비밀을 찾아주세요."},
	["no"] = {["1"] = "파풀라투스가 두려우신 건가요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "어떻게 여기에 들어왔죠?? 당신은 누구에요? 손에 그 열쇠는... 지금 제 손에도 있는데... 그걸 어떻게 가지고 있는 거죠? 이 세상엔 1개밖에 없는 열쇠인데... ", ["2"] = "당신이 들고 있는 열쇠를 보여주세요."},
	["yes"] = {["1"] = "제 열쇠가 맞군요. 이게 어떻게 2개나 있는 거지? 신기하군요."},
	["stop"] = {
		["npc"] = {["1"] = "시계탑의 근원으로 다시 가보세요. 분명히 열쇠를 이용해서 무언가를 할 수 있을 거에요."},
		["item"] = {["1"] = "빨리 이 곳에서 나가주세요. "},
	},
	["ask"] = {"열쇠를 잃어버리셨다구요? 다행히도 열쇠를 미리 복사해두었어요. 자~ 다시는 잃어버리지마세요. 소중한 연구자료니까요."},
}
return nTable
end