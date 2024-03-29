return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002104,
	["lvmin"] = 68,
	["normalAutoStart"] = 1,
	["quest"] = {{["id"] = 21755, ["state"] = 2}},
	["job"] = {2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1201000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500,
}
nTable["info"] = {
	["name"] = "여제에게 보내는 편지",
	["area"] = 6,
	["0"] = "레벨 68이 되자 갑자기 #b#p1002104##k가 말을 걸어 온다.",
	["1"] = "#p1201000#이 편지에 건 저주를 해독하는데 성공한 모양이다! 그런데 그 편지가 놀랍다는데... 어서 #b#m140000000##k으로 가서 #b#p1201000##k을 만나 편지의 내용을 확인하자.",
	["2"] = "편지는 놀랍게도 영웅들이 당시의 여제에게 보내는 것이다. 그 내용은 #m130000000#에 있는 봉인석을 잘 보관해 달라는 당부의 글이라고 한다. ",
	["autoStart"] = 1,
	["type"] = "[스킬]",
}
nTable["say0"] = {
	["base"] = {["1"] = "영웅님! 기쁜 소식이야! #p1201000#이 그 편지를 완전히 해독하는데 성공했대! 근데 그 내용이 엄청난 것 같아! 어서 #b#m140000000##k으로 가서 #b#p1201000##k에게 편지의 내용을 확인해줘!"},
	["yes"] = {["1"] = "아직 블랙윙에 관한 특별한 정보는 없어! 블랙윙도 아직 봉인석에 대한 단서를 찾지 못한 거야! #b이번에야말로 블랙윙보다 한 발 앞서 움직일 수 있어#k! 서두르라고!"},
	["no"] = {["1"] = "엥? 바빠도 이번 일을 우선해야지, 무슨 말이야? 다시 한 번 생각해 보라고!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "진실 아저씨에게 들었죠? 이 편지는 생각했던 것보다 더 엄청난 내용을 담고 있었어요. 이 편지를 쓴 건 영웅들, 즉 아란과 그 당시의 동료들... 그리고 받는 사람은... 놀랍게도 당시의 #b여제#k예요! "},
	["yes"] = {["1"] = "편지의 내용은 간단해요. \n\n“#m130000000#에 있는 봉인석을 잘 보관해 달라”는 거예요. \n\n#b#m130000000#에 역시 봉인석이 있는 모양이에요#k."},
	["stop"] = {
		["npc"] = {["1"] = "아직도 #b#m140000000##k에 안 간 거야? 서둘러줘, 영웅님! #b#p1201000##k이 당신을 기다린다고!"},
	},
}
return nTable
end