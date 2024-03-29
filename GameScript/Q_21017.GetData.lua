return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1201000,
	["startscript"] = "q21017s",
	["quest"] = {{["id"] = 21016, ["state"] = 2}},
	["job"] = {2000},
}
nTable["check1"] = {
	["npc"] = 1201000,
	["mob"] = {
		[1] = {["id"] = 100133, ["count"] = 20}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 550,
	["item"] = {
		{["id"] = 2000022, ["count"] = 25},
		{["id"] = 2000023, ["count"] = 25}
	},
}
nTable["info"] = {
	["name"] = "기초 체력 단련3",
	["area"] = 6,
	["0"] = "기초 체력 단련이 계속된다. 세 번째 기초 체력 단련을 시작하려면 #b#p1201000##k에게 말을 걸어 보자.",
	["1"] = "#p1201000#은 전보다 한 단계 더 올려 기초 체력 단련을 하자며 #b#o0100133##k를 퇴치해 보자고 한다. 은근히 점점 많아지는데... 그것에 대해 #p1201000#에게 말하자 #p1201000#은 호쾌하게 무시해 주었다. ...어서 #b#m140020200##k으로 가자.\r\n\r\n#o0100133##r #a210171##k",
	["2"] = "#o0100133#를 모두 퇴치하고 돌아왔다.",
	["type"] = "[필수]",
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "#o0100133#를 모두 퇴치하고 돌아오셨군요. 좀 모자라지 않았나요? 역시 한 300마리만이라도 더 퇴치...\n#b#L0#(등 뒤에서 식은땀이 흐른다)#l\n#k", ["2"] = "...했으면 좋겠지만 이미 기초 체력은 어느 정도 만들어진 것 같으니 그럴 필요는 없을 것 같네요."},
	["yes"] = {["1"] = "마지막으로 기초 체력을 점검하기로 해요. 그럼 준비가 되면 말을 걸어 주세요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["mob"] = {["1"] = "아직 #r#o0100133# 20마리#k 퇴치를 완료하지 못하셨군요. 그 정도로는 부족해서 시작조차 할 수 없으시다는 건가요? 어머, 역시 영웅님은 달라도 뭐가 다르다니까. 자, 어서 #b#m140020200##k으로 가주세요."},
	},
	["ask"] = 1,
}
return nTable
end