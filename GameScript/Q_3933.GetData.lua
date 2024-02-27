return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101003,
	["lvmin"] = 29,
	["startscript"] = "q3933s",
	["quest"] = {{["id"] = 3932, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101003,
	["mob"] = {
		[1] = {["id"] = 9100013, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 7250,
	["item"] = {
		{["id"] = 2012000, ["count"] = 10},
		{["id"] = 2012002, ["count"] = 10}
	},
}
nTable["info"] = {
	["name"] = "아딘의 모래그림단",
	["parent"] = "아딘이 말하는 모래그림단",
	["order"] = 3,
	["0"] = "#p2101003#의 시험을 모두 통과했다. 이제 모래그림단원으로 인정받을 수 있겠지? 대결까지 했던 #p2101003#에게 가서 물어보자.",
	["1"] = "#p2101003#은 왕비라는 무서운 적에 맞서 싸우기 위해 모래그림단은 강해져야만 한다며 그와 싸워 이긴다면 모래그림단원으로 인정해 주겠다고 하는데... 과연 #p2101003#과 싸워 이길 수 있을까? \n\n아딘의 분신 #r#a39331##k",
	["2"] = "둔한 인상에 배도 나왔지만 #p2101003#은 예상 외로 강했다. 하지만 어쨌든 대결에서 승리했으니 모래그림단원이 된 걸까? #p2101003#은 모래그림단원이 되려면 그 외의 다른 두 명의 단원에게서 인정을 받아야 한다고 말했다. 그러고 보니 #p2103001#에는 철퇴말고도 활과 화살, 단검이라는 단어도 있었지?",
	["area"] = 44,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "후아~ 이런 재미있는 대련은 오랜만이었어. 욕심이 많은데다 이상한 주술까지 쓰는 왕비에 대적하려면 강한 사람이 필요했는데, 너 정도로 강하다면 모래그림단에 충분히 도움이 될 것 같아."},
	["yes"] = {["1"] = "하지만 네가 아직 모래그림단원이라는 건 아니야. 이 #p2101003#의 시험은 이걸로 통과했지만 모래그림단의 시험은 아직 끝이 아니거든. 다른 모래그림단원들을 찾아서 그들의 시험에도 통과해야 해. 네가 모래그림단원이 되었으면 좋겠다. "},
	["stop"] = {
		["mob"] = {["1"] = "나와의 대련에서 승리하면 널 인정해 주지."},
	},
}
return nTable
end