return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060006,
	["lvmin"] = 25,
	["quest"] = {{["id"] = 2167, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1092003,
	["item"] = {{["id"] = 4031842, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031842, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 7000,
	["item"] = {
		{["id"] = 4031842}
	},
}
nTable["info"] = {
	["name"] = "바다의 정기를 먹고 사는 반딧불2",
	["0"] = "뮤즈에게 다시 병을 받아서 노틸러스호로 돌아가야하지 않을까?",
	["1"] = "뮤즈에게 바다의 정기가 가득 든 마법의 병을 받았다. 노틸러스호가 점점 어두워지기 전에 빨리 #b샤를 왕자#k님께 가져다주자고! \n\n#i4031842##t4031842# #b#c4031842##k / 1",
	["2"] = "바다의 정기를 노틸러스호에 풀자 노틸러스호가 한층 밝아진 느낌이다. 그런데 왜 샤를 왕자님은 카이린님이 기뻐할 수도 있다며 얼굴이 빨개지는거지?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "마법의 병에 바다의 정기를 가득 담았답니다. 다시 노틸러스호로 돌아갈 준비가 되셨나요? "},
	["yes"] = {["1"] = "여기 있습니다. 빨리 샤를 왕자님에게 전해주세요."},
	["no"] = {["1"] = "준비가 되시면 다시 말해주세요. 왕자님께서 급하신 것 같으니 빨리 준비해주시면 좋겠네요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "아~ 가지고 오셨군요. 이제 노틸러스도 다시 환해지겠군요."},
	["yes"] = {["1"] = "카이린님도 한시름 놓으시겠죠? 카이린님이 기뻐하시면 좋겠네요."},
	["stop"] = {
		["npc"] = {["1"] = "아직 출발하지 않으신 건가요? 빨리 노틸러스호로 가서 샤를 왕자님께 바다의 정기를 전해주세요."},
		["item"] = {["1"] = "아직인가요?"},
	},
	["ask"] = {"저런... 잃어버리셨나요?", "바다의 정기를 모으기 위해선 많은 노력이 필요합니다. 그만큼 귀한 것이니 다시는 잃어버리지 말아주세요."},
}
return nTable
end