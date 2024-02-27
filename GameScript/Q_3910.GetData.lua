return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101000,
	["lvmin"] = 32,
	["quest"] = {{["id"] = 3900, ["state"] = 2}, {["id"] = 3909, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2100001,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100,
	["nextQuest"] = 3911,
}
nTable["info"] = {
	["name"] = "무희의 칼춤",
	["parent"] = "무희의 칼",
	["order"] = 1,
	["0"] = "방울을 옷에 달고 춤을 연습하는 #b#m260000000##k의 무희 #p2101000#. 그녀에게 뭔가 더 필요한 것이 생겼다는데... #b#p2101000##k에게 가보자.",
	["1"] = "#p2101000#은 방울 소리까지 내는 멋진 의상은 준비 되었지만 아무래도 칼이 너무 수수한 것 같다며 특기인 칼춤을 멋지게 추려면 새 칼이 필요하다고 했다. #m260000000#에서 그런 칼을 만들만한 사람은 제작자 #b#p2100001##k 뿐이라는데...",
	["2"] = "새 칼이 필요한 무희 #p2101000#. 그녀에게 칼을 만들어 줄 #p2100001#를 찾아가자.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "앗. 너는 전에 #o2100105#에게서 #t4000328#을 구해다 준 그 모험가잖아? 반가워~ 네 덕분에 춤 연습은 잘 되고 있어. 아름다운 방울 소리에 맞춰서 춤을 추는 걸 보면 귀한 것만 좋아한다는 왕비도 깜짝 놀랄걸.", ["2"] = "하지만 이 춤만으로도 살짝 부족한 느낌이 드는 건 왜일까? 동작은 완벽하고 의상도 완벽한데... 역시 소품이 문제인 것 같아. 이 칼은 연습용인데다가 너무 낡아서 특기인 칼춤을 추기엔 너무 수수한 것 같아. 네가 좀 도와주지 않을래?"},
	["yes"] = {["1"] = "후훗. 이 #p2101000#님의 춤에 반한 너라면 도와주겠다고 할 줄 알았어. #m260000000#에서 칼을 만들만한 사람은 제작자 #b#p2100001##k 뿐이니까 그분에게 가서 무희용의 칼을 만들어 달라고 해봐. ", ["2"] = "전부터 만들어 달라고 말했는데, 고지식한 사람이라 항상 거절했거든. 하지만 또 모르지. 모험가인 네가 가서 만들어 달라고 하면 무희용 칼을 만들어 줄지 수도 있잖아? 안 그래? 그럼 부탁해!"},
	["no"] = {["1"] = "에엣? 도와주지 않겠다는 거야? 너무해~ 멋진 칼만 있으면 더 화려하고 아름다운 춤을 출 수 있을 텐데. 이 #p2101000#님의 칼춤이 보고 싶지 않은 거야?"},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2100001##k에게는 안 간 거야? 고지식하게 생긴 제작자 노인을 찾으면 돼. 그래뵈도 실력만큼은 최고니까 그가 만든 칼로 구해줘야 해?"},
	},
}
return nTable
end