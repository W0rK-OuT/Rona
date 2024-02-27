return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041021,
	["lvmin"] = 60,
}
nTable["check1"] = {
	["npc"] = 2041021,
	["item"] = {{["id"] = 4031170, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2700,
	["money"] = 3270,
	["nextQuest"] = 7101,
	["item"] = {
		{["id"] = 4031170, ["count"] = -10}
	},
}
nTable["info"] = {
	["name"] = "루디브리엄을 사수하라",
	["parent"] = "루디브리엄을 사수하라",
	["order"] = 1,
	["0"] = "루디브리엄의 신비한 힘이 사라진 이 후.. 그 곳은 혼돈의 시간이 시작되었다. 루디브리엄의 뒤틀려 버린 시간을 바로 잡아야 한다. 루디브리엄의 아래 #b시간의 통로#k에 있는 #b#p2041021##k를 만나 보자.",
	["1"] = "시간의 통로에 있는 #b#p2041021##k를 만났다. 루디브리엄의 시간의 힘의 근원인 시간의 구를 대체할 새로운 에너지를 만들 수 있는 것을 찾아주기로 하였다. 대체 에너지로 여겨지는 것을 #r10 개#k 모아서 가져다주자.\n\n#t4031170:# #r#c4031170#/10#k",
	["2"] = "시간의 구를 생성할 수 있는 #b#t4031170##k을 모아 #b#p2041021##k에게 보여주었다. #i4031170#으로 새로운 시간의 힘을 생성할 수 있을 것 같다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "시간의 흐름이 멈춘 루디브리엄의 신비로운 #b힘의 근원#k이 무엇인지 알고 있나요? 이상하게도... 그 힘이 사라졌어요. 어떻게 된 일 일까요? 부탁이 있는데.. 저를 도와주지 않겠어요?"},
	["yes"] = {["1"] = "고마워요. 음.. 그 힘은 이 곳의 가장 하층에 있는 동력실의  #b시간의 구#k가 그 근원이라고 할 수 있어요. 그런데 언제부터인가 그 힘이 사라졌습니다.  조사를 갔던 이들에게서 전달되어 온 내용은 시간의 구를 대체할 것이 필요하다는 것 뿐입니다.", ["2"] = "그 힘을 대체할 수 있는 에너지로 추정되는 것을 10개 정도 모아와 주시면 됩니다. 이 곳의 몬스터들이 그 힘을 얻음으로 인해 사악해졌습니다. 분명 그들을 처치하면 그 힘을 되찾을 수 있을 거에요.\n\n#i4031170# #t4031170# #r10 개#b"},
	["no"] = {["1"] = "찾는 것이 힘들 것 같다구요? 여기서 아래로 내려가면 나타나는 몬스터를 처치하면 얻을 수 있는 것이니 그리 어렵진 않다구요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "제가 말한 것을 찾아 내신 건가요? 어떻게 반응하는지 빨리 확인하고 싶어요.."},
	["stop"] = {
		["item"] = {["1"] = "음, 제대로 반응하는지 확인하기 위해서는 10 개 정도가 필요할 것 같은데.. 양이 모자른 것 같아요. 확인한 다음 다시 저에게 말을 걸어주세요."},
	},
}
return nTable
end