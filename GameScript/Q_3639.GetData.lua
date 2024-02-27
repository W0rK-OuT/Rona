return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040052,
	["lvmin"] = 45,
}
nTable["check1"] = {
	["npc"] = 2040052,
	["item"] = {{["id"] = 4031298, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 8000,
	["item"] = {
		{["id"] = 2020012, ["count"] = 30},
		{["id"] = 4031298, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "금도끼 은도끼 동화책 회수",
	["0"] = "핼리오스탑 도서관이 엉망이 돼버렸다는데...",
	["1"] = "도서관 사서 위즈는 금도끼 은도끼 동화책의 내용이 뒤엉켜버렸다면서 이야기를 바로 잡고 이야기가 바르게 적혀 있는 온전한 동화책을 가져오라고 했다.\n\n#i4031298##t4031298# #b#c4031298#/1#k",
	["2"] = "도서관 사서 위즈의 부탁을 받고 산신령과 나무꾼 사이에 뒤엉켜 버린 이야기를 바로 잡고 완전한 동화책을 구해 위즈에게 가져다 주었다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "큰일났군요. '금도끼 은도끼' 이야기책이 루디브리엄에서 시작된 차원의 균열의 여파로 내용을 알아볼 수 없게 뒤엉켜버렸어요. 아마도 지금쯤 아랫마을에 살고 있는 나무꾼과 산신령님에게도 무슨 문제가 생겼을 거에요.", ["2"] = "하지만 전 이 도서관 밖으로 나갈 수 없어요. 도서관에서 책들을 관리하는 것이 저의 일이거든요. 절대 자리를 비워서는 안돼요. 혹시 아랫마을로 가시는 거라면 금도끼 은도끼 이야기를 바로 잡고 온전한 '금도끼 은도끼' 동화책을 한 권 가져다 주세요."},
	["no"] = {["1"] = "이 도서관이 복구되지 않는다면 아랫마을은 이야기들이 뒤엉켜버려서 영원히 혼란 속에 빠질 텐데 큰일이군요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이야기를 바로 잡으신 모양이군요. 이 책을 제자리에 돌려 놓으면 도서관도 한결 안정을 찾게 될 거에요. 도서관 복구작업을 도와주셔서 감사합니다."},
	["stop"] = {
		["item"] = {["1"] = "이야기를 바로 잡고 온전한 동화책을 가져와 주세요."},
	},
}
return nTable
end