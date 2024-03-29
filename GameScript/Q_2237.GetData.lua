return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1063014,
	["lvmin"] = 50,
}
nTable["check1"] = {
	["npc"] = 1061014,
	["item"] = {{["id"] = 4032250, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4032250, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 30000,
	["nextQuest"] = 2238,
	["item"] = {
		{["id"] = 4032250, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "버려진 쪽지의 주인",
	["area"] = 30,
	["0"] = "개미굴에서 이상한 쪽지가 눈에 띈다. 주워보자.",
	["1"] = "던전 안에서 이상한 쪽지를 주웠다. 주인을 찾아 주자. 혹시 무영의 것이 아닐까?",
	["2"] = "던전 안에서 이상한 쪽지를 주웠다. 주인을 찾아 주자. 혹시 무영의 것이 아닐까? 지하신전에서 만난 무영에게 이상한 쪽지를 건냈다.",
	["summary"] = "길에서 주운 종이조각의 주인을 찾아주자. 무영이 아닐까?",
	["demandSummary"] = "#i4032250:# #t4032250:# #c4032250# / 1\r\n",
	["parent"] = "버려진 쪽지",
	["order"] = 1,
	["rewardSummary"] = "경험치 30,000\r\n'쪽지의 주인은?' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "바닥에 이상한 종이가 떨어져 있다. 주워서 내용을 보시겠습니까?"},
	["yes"] = {["1"] = "종이쪽지에는 알 수 없는 단어가 적혀있다.\r\n#b어둠의 마왕. 지하신전, 무모한 젊은이, 봉인의 열쇠...나의 죽음'#k\r\n도무지 무슨 내용인지 알 수 없다. 주위에 주인으로 보이는 사람은 보이지 않는다. 어쩌면 만지의 제자 무영의 것인지도 모른다."},
	["no"] = {["1"] = "누군가 버린 쓰레기인가?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "어? 그건 뭔가요. 제 것이 아닌데요."},
	["stop"] = {
		["npc"] = {["1"] = "종이조각의 주인을 찾아보자."},
		["item"] = {["1"] = "저한테 무슨 볼일이라도..."},
	},
}
return nTable
end