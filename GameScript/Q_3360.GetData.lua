return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111006,
	["lvmin"] = 70,
	["startscript"] = "q3360s",
	["quest"] = {{["id"] = 3359, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111006,
	["infoex"] = {"1"},
}
nTable["act0"] = {
	["info"] = "0",
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "비밀번호 인증",
	["parent"] = "조용한 비밀통로",
	["order"] = 3,
	["1"] = "#p2111006#은 자유롭게 비밀통로를 오갈 수 있는 번호라며 길고 복잡한 마스터키를 말해 주었다. 으으... 어려워서 까먹을 것 같으니 어딘가에 적어 두자. ",
	["2"] = "#p2111006#이 말한대로 마스터키를 말하자 비밀통로가 열렸다. 이제부터 자유롭게 비밀통로를 이용할 수 있는 것 같다. 흐음... 의외로 도움이 될 때도 있는 수다쟁이로군.",
	["area"] = 44,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "어떤가? 비밀통로는 잘 이용할 수 있게 되었는가? 역시 그렇군. 이 파웬님의 머리는 아직 녹슬지 않았단 말이야. 물론 머리 자체가 없긴 하지만..."},
	["yes"] = {["1"] = "비밀통로의 존재는 절대 알려져서는 안 된다네. 왜냐고? 비밀통로 안에는 새로운 곳으로 갈 수 있는.... 으흠. 아니지, 이런 말을 하면 안 되지. 아무튼 입조심하게."},
}
return nTable
end