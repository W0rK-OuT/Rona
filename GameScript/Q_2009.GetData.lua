return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012102,
	["lvmin"] = 20,
}
nTable["check1"] = {
	["npc"] = 1012102,
	["item"] = {{["id"] = 4000009, ["count"] = 40}, {["id"] = 4000012, ["count"] = 40}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3000,
	["item"] = {
		{["id"] = 2040000, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040001, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2040002, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4000012, ["count"] = -40},
		{["id"] = 4000009, ["count"] = -40}
	},
}
nTable["info"] = {
	["name"] = "피아와 파란버섯",
	["0"] = "헤네시스 공원에 있는 피아를 찾아보자.",
	["1"] = "헤네시스 공원의 시계탑 아래에서 인형옷을 뒤집어 쓰고 있는 피아를 만났다. 그녀는 엘리니아로 가던 길에 #o2220100#들을 만나 고생했다면서 그놈들을 혼내달라는 부탁을 해왔다. 그 증거로 #b#t4000009# 40개와 #t4000012# 40개#k를 모아와 달라고 하는데... 그런 이상한 인형옷을 입고 돌아다니니까 공격당하는 거라구~\n\n#i4000009# #t4000009# #b#c4000009##k/40\n#i4000012# #t4000012# #b#c4000012##k/40",
	["2"] = "헤네시스 공원의 시계탑 아래에 있는 피아에게 부탁한 #b#t4000009# 40개와 #t4000012# 40개#k를 가져다 주었다. 그 답례로 투구를 강화시켜주는 주문서를 받았는데... 지금 쓰고 있는 투구로 주문서를 드래그해서 갖다 두면 그 투구에 주문서를 사용할 수 있다고 한다. 하지만 이거... 실패해 버리면 어쩌지?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "에휴...며칠 전에 #m101000000#에 있는 친구에게 가는 길에 #o2220100#을 만나서 엄청 고생했다니까~! 정말 화가나!!! 내가 힘만 좀 있었더라면... 한 방에 끝났을 텐데!!", ["2"] = "어라? 너 좀 강해 보이는데?? 시간이 있다면 나 대신 녀석들을 혼내주지 않을래??? 그 증거로 #b#t4000009# #e40#n개#k와 #b#t4000012##e40#n개#k를 모아 온다면 좋은걸 줄게. 엄~청 좋은거라구~!! 후회 안할 걸???"},
}
nTable["say1"] = {
	["base"] = {["1"] = "앗!! 그건 #b#t4000009##k이랑 #b#t4000012##k 아니야? 이렇게나 많이 주웠다니... 너 엄청난 녀석이로구나~! 고마워!!! 덕분에 분이 좀 풀리는거 같아. 아하하~! 고것들 샘통이다! 아하하하~ 기분 좋아~", ["2"] = "아참! 뭔가 잊은게 있나 싶더니... 이거 별건 아니지만... 내 부탁을 들어줬으니까 특별히 주는 거야. 정말 수고 많았어~"},
	["yes"] = {["1"] = "이 주문서는... 투구를 강하게 만들어주는 힘이 있는 모양이야. 사용 방법은 간단해. 아이템의 소비탭과 장비창을 동시에 열어봐... 그 후 내가 준 주문서를 드래그 해서 지금 네가 쓴 투구에 가져가면 사용할 수 있어. 실패할 수도 있으니까 신중해야해."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000009# #e40#n개#k와 #b#t4000012##e40#n개#k를 모아다 주면 좋은걸 주지. 나는 약속은 지키는 사람이라구~"},
	},
}
return nTable
end