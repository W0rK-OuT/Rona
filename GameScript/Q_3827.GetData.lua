return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2091002,
	["lvmin"] = 70,
}
nTable["check1"] = {
	["npc"] = 2092001,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2000,
}
nTable["info"] = {
	["name"] = "태상의 부탁",
	["parent"] = "빨간코 해적단 소탕 작전",
	["order"] = 1,
	["0"] = "#b#m250000000##k의 약재사 #b#p2091002##k이 부탁하고 싶은 것이 있다는데…",
	["1"] = "#p2091002#은 #m250000000#과 #m251000000#을 오가는 화물선을 공격해 약초들을 강탈해가는 #r빨간코 해적단#k에 대해 말하며 #b#m251000000##k의 화물책임자 #b#p2092001##k과 힘을 합하여 화물을 보호해 달라고 했다. ",
	["2"] = "#b#p2092001##k은 경험이 많은 선원으로 보인다. 그와 힘을 합친다면 데비존의 수하를 물리치는 것도 어렵지 않을지도...?",
	["area"] = 47,
	["sortkey"] = "15",
}
nTable["say0"] = {
	["base"] = {["1"] = "이번에도 약재가 강탈당하다니… 이래서야 #m250000000#의 약선이라는 이름이 울겠구만… 자네도 그렇게 생각하지? 으응? 이제 보니 마을 사람이 아니군. 무슨 말인지 전혀 모르겠다는 표정인데, 한 번 이야기를 들어보겠나?"},
	["yes"] = {["1"] = "#m250000000# 옆에 있는 #b#m251000000##k은 약초로 유명한 마을이지. 특히 구영감의 약초가 질이 좋으니 자네도 한 번 써보… 아니, 이런 말 할 때가 아니지. 그런데 요즘 웬 이상한 해적들이 소굴을 만들고, 약초를 운반하는 배들만 골라서 약탈해 가고 있어. ", ["2"] = "#m251000000#에서 약초가 안 오면 #m250000000#에서도 약을 만들 수가 없다네. #m251000000#의 화물책임자인 #b#p2092001##k이 책임을 지고 어떻게든 해결해 보겠다고 말은 하고 있는데, 그 사람이라고 뭐 뾰족한 수가 있겠나… 자네가 모험가라면 이 일을 좀 도와주게나. "},
	["no"] = {["1"] = "외부 사람이 이런 일에 관심이 있을 리가 없지…"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#m251000000#에 오신 것을 환영하오. 하지만 지금 #m251000000#은 분위기가 좋지 않으니, 여행자분도 행동을 조심하시오. …음? #p2091002#님께서 보내서 왔다고?"},
	["yes"] = {["1"] = "옷과 장비들을 보니 분명히 경험 많은 모험가로 보이는군. 하지만 이 일은 그리 쉽지 않을 텐데… 당신이 할 수 있겠소?"},
	["stop"] = {
		["npc"] = {["1"] = "#b#p2092001##k은 아직 못 만난 건가? #p2092001#은 지금은 #b#m251000000##k에서 조용히 화물들을 운반하고 있지만 예전에는 유명한 모험가였다더군."},
	},
}
return nTable
end