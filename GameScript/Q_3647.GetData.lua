return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2071005,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3643, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2071003,
	["item"] = {{["id"] = 4031793, ["count"] = 1}},
	["mob"] = {
		[1] = {["id"] = 7220001, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 204300,
	["pop"] = 15,
	["item"] = {
		{["id"] = 4031793, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "혼 되돌리기",
	["parent"] = "전설의 고향",
	["order"] = 4,
	["1"] = "구미호에게 혼을 빼앗긴 칠남이를 구하는 법을 알려주자, 칠성이는 무척 기뻐했지만, 곧 시무룩해졌다. 그의 힘으로는 구미호의 꼬리를 구할 수 없기 때문이라는데...  칠성이를  대신해 #r구미호#k를 사냥하고 #b구미호의 꼬리#k를 구해 보자!  \n\n구미호 #r#a36471##k \n#i4031793##t4031793#  #b#c4031793##k/1",
	["2"] = "구미호의 꼬리 끝으로 칠남이의 코를 간질였더니 칠남이는 재채기를 하며 정신을 차렸다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "오셨군요! 산신령님께는 가보셨나요? 칠남이가 왜 이렇게 됐는지 알아오셨습니까? 아... 구미호에게 당해서였군요... 그러니까 요새처럼 여우 소리가 요란할 때는 까막산에 가지 말라고 그렇게 말했건만... 말을 안 듣더니! 그럼 고치는 방법은...", ["2"] = "아, 다행히도 고치는 방법도 알아오셨군요. 그 방법이... 구미호의 꼬리를 구하는 것이라고요? ...그런! 구미호와 같은 요괴에게서 어찌 꼬리를 구해올지... 모험가님... 혹시 당신은 구미호의 꼬리를 구하는 게 가능하십니까?"},
	["yes"] = {["1"] = "그렇다면 제발 #b구미호의 꼬리#k를 구해 #b칠남#k이를 살려 주세요. 이대로 혼도 없이 두기에는 너무 아까운 아이입니다! 부탁드립니다! "},
	["no"] = {["1"] = "불가능하시다면 어쩔 수 없겠지만... 그럼 우리 칠남이는 어떻게 해야 할까요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "(칠남이가 멍하니 하늘을 보고 있다. 구미호의 꼬리를 코 끝에 가져다 대고 살살 흔들어 보자.)", ["2"] = "에취!", ["3"] = "훌쩍... 감기인가? 엥? 당신은 누구십니까? 여긴 왠일로... 네? 제가 여우에 홀렸었다고요? "},
	["yes"] = {["1"] = "아... 얼마 전에 까막산에 나무 하러 갔다가 예쁜 처녀를 만나 도와준 적이 있었는데... 그 이후의 기억이 없습니다. 아마도 그 여자가 구미호였던 모양이군요! 으으... 구미호에게 혼을 빼앗겼다니... 소름이 끼칩니다.", ["2"] = "은인께서 도와주시지 않았다면 그대로 구미호에게 잡아먹히고 말았겠지요... 정말 감사합니다!"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b구미호의 꼬리#k는 못 구하신 겁니까? 어서 구미호의 꼬리를 구해 #b칠남#k이에게 가셔서 녀석이 정신을 차릴 수 있게 해 주세요."},
		["item"] = {["1"] = "(구미호의 꼬리가 없어졌다! 다시 구미호를 잡아 꼬리를 구해야 할 것 같다.)"},
	},
}
return nTable
end