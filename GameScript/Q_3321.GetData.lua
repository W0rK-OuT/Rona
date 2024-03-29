return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111002,
	["lvmin"] = 70,
	["startscript"] = "q3321s",
	["quest"] = {{["id"] = 3320, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111006,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 5000,
}
nTable["info"] = {
	["name"] = "실종된 연금술사, 드랭",
	["parent"] = "파웬의 기억",
	["order"] = 2,
	["1"] = "약간은 우울한 듯한 얼굴... 하지만 차분해 보이는 #p2111002#은, 끔찍한 실험으로 사람들을 놀라게 할 것 같지는 않아 보였다. 무심코 하는 그의 말을 잘 들어보니, 놀랍게도 그의 아내는 #b#p2111004##k인 것 같다! 그는 필리아에게 #b은 펜던트#k를 선물하고 싶었다는데... \n\n ...은으로 된 펜던트? 그러고 보니 전에 #p2040050#가 #p2111002#의 비밀 연구노트가 있는 곳을 열어줄 열쇠는 은으로 만든 물건이라고 하지 않았던가? 그 펜던트가 #p2111002#의 집에 있었다니...",
	["2"] = "#p2111006#의 놀라운 힘 덕분에 #p2111002#과 대화할 수 있었다. ",
	["area"] = 44,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["base"] = {["1"] = "...음... 뭔가 멍해 보이는군. 자네가 말하던 사람이 그 연금술사 같아서 보내줬는데... 어때? 그가 맞았는가? 흠... 아닌 모양이군. 하긴. 그는 자네와 달리 뭔가 음침하고 우울한 것이 말을 걸기도 어려운 작자지.  \r\n#b#L0#그는 어디에 있는 건가요?#l", ["2"] = "어디? 어딜까... 어디 같은 것은 없어. 그건 그저 과거의 사념이었을 뿐이라네. \r\n#b#L0#현재의 그가 어디 있는지는 알 수 없나요?#l", ["3"] = "알 수 없지. 그건 그냥 사념이었을 뿐이라니까. 별 거 아니니 잊어 버리게. "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
return nTable
end