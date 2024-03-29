return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2071003,
	["quest"] = {{["id"] = 3601, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2072000,
	["item"] = {{["id"] = 4031246, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031246, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 4031246, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "형제의 볏섬 나르기2",
	["parent"] = "의좋은 두 형제",
	["order"] = 2,
	["1"] = "칠남이는 장남인 형에게 볏섬이 더 가야한다면서 자신의 볏짐속에서 #t4031229# 하나를 빼내어 주면서 형인 칠성이네 마당에 있는 볏짐 속에 놓아 두고 오라고 부탁했다. ",
	["2"] = "칠남이 한테 받은 #t4031229#을 칠성이네 집 마당에 쌓여있는 볏짐속에 내려 놓았다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "거기 누구죠? 마을에 외지인들이 들어왔다고 하더니, 외지에서 오신 분인가 보죠? 마침 잘 됐네요. 제 부탁을 좀 들어주세요. 저희 형과 저는 이 마을에서 농사를 짓고 있어요 얼마 전에 수확을 해서 볏섬을 똑같이 나눠 가졌죠. 그런데 아무리 생각해도 부모님을 모시는 형님이 조금 더 많이 가져가야 한다고 생각해요. 하지만 분명 받으려 하시지 않을 거에요. 형님 몰래 이 #t4031229# 한 개를 형님네 집 앞에 쌓여있는 볏짐 속에 놓고 와주시겠어요?"},
	["yes"] = {["1"] = "부탁 드릴게요. 절대 형님에게 들키시면 안돼요~"},
	["no"] = {["1"] = "처음 보는 사람한테 이런 부탁을 드리는 건 역시 실례겠죠?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "칠성이네 마당에 쌓여 있는 볏짐이 보인다. 가져 온 볏섬을 몰래 내려놓았다."},
	["stop"] = {
		["item"] = {["1"] = "칠성이의 볏짐입니다."},
	},
	["ask"] = {"#t4031229#을 가져가시는걸 잊으셨군요.", "형님에게 들키지 않도록 조심해 주세요."},
}
return nTable
end