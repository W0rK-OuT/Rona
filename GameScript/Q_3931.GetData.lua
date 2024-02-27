return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101003,
	["lvmin"] = 29,
	["quest"] = {{["id"] = 3927, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101003,
	["mob"] = {
		[1] = {["id"] = 2100105, ["count"] = 100}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3000,
}
nTable["info"] = {
	["name"] = "철퇴를 가진 남자",
	["parent"] = "아딘이 말하는 모래그림단",
	["order"] = 1,
	["0"] = "#p2103001#에서 본 철퇴라는 단어... 아무래도 철퇴를 가진 누군가를 가리키는 말 같다. #m260000000#에서 철퇴를 가지고 있는 사람이라면 #p2101003# 외에는 없었던 것 같은데...?",
	["1"] = "#p2101003#은 역시 모래그림단원이었다. 하지만 #p2101003#은 강한 자만이 모래그림단원이 될 수 있다며 강함을 증명해 보라고 했다. 증명 방법은 사나운 #r#o2100105##k를 퇴치하는 것이라는데... #o2100105#라고? 단번에 퇴치해 주지!\n\n#o2100105# #r#a39311##k",
	["2"] = "#o2100105#를 퇴치하였지만 #p2101003#은 그 정도로는 모래그림단원이 되기에는 역부족이라며 아직 단원으로 인정할 수 없다고 말했다. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "넌 누구지? 무슨 용건이라도 있어? 뭐? 모래그림단에 들어오고 싶다고? 도대체 그런 이야기는 어디서 듣고 온 거야? 아니, 중요한 건 그게 아니지. 정말 모래그림단원이 되고 싶어?"},
	["yes"] = {["1"] = "흠. 모래그림단의 임무는 어렵고 힘든 것이 많아. 당신도 어느 정도 실력에 자신이 있는 모험가로 보이지만 글쎄... 믿음이 안 가는걸? #r#o2100105# 100마리#k를 퇴치하고 당신의 강함을 증명하면 조금쯤은 믿음이 가지 않을까?"},
	["no"] = {["1"] = "싫다면 저리 가. 괜히 옆에서 얼쩡대지 말라고. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o2100105# 100마리를 퇴치했다고? 정말이야? 믿어지지 않는걸? ...헤에. 정말인 모양이잖아? "},
	["yes"] = {["1"] = "하지만 #o2100105#는 별것도 아니야. 그것보다 훨씬 크고 무서운 게 모래그림단의 적이라고. #o2100105#를 해치운 정도로는 모래그림단원이 될 수 없어. "},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r#o2100105# 100마리#k를 퇴치하지 못했잖아? 그 정도 실력으로 모래그림단원이 될 수 있겠어?"},
	},
}
return nTable
end