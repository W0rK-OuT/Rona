return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2030012,
	["lvmin"] = 46,
	["interval"] = 0,
	["quest"] = {{["id"] = 22566, ["state"] = 2}},
	["item"] = {{["id"] = 4032468, ["count"] = -9}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 2030012,
	["item"] = {{["id"] = 4000070, ["count"] = 10}, {["id"] = 4000071, ["count"] = 10}, {["id"] = 4000072, ["count"] = 10}, {["id"] = 4000068, ["count"] = 10}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4000070, ["count"] = -10},
		{["id"] = 4000071, ["count"] = -10},
		{["id"] = 4000072, ["count"] = -10},
		{["id"] = 4000068, ["count"] = -10},
		{["id"] = 4032468, ["count"] = 10}
	},
}
nTable["info"] = {
	["name"] = "성장 촉진제 제조하기",
	["area"] = 7,
	["0"] = "#p2012034# 안에 있던 비밀단체의 임무대로 #p2030012#에게 가서 성장촉진제를 만들자. #b#p2030012##k은 #b#m200081201##k에 있는 것 같다.",
	["1"] = "성장촉진제의 재료는 #b#t4000070# 10개, #t4000071# 10개, #t4000072# 10개, #t4000068# 10개#k이다. 모든 재료를 구해 #p2030012#에게 맡기자.\r\n\r\n#i4000070# #t4000070# #b#c4000070# / 10#k\r\n#i4000071# #t4000071# #b#c4000071# / 10#k\r\n#i4000072# #t4000072# #b#c4000072# / 10#k\r\n#i4000068# #t4000068# #b#c4000068# / 10#k",
	["2"] = "#p2030012#에게 성장촉진제를 받았다. 다시 은밀한 방으로 가서 벽돌 안에 성장촉진제를 넣어두자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "여기까지 찾아오는 사람은 대체로 모험가 아니면 내 연구 결과를 필요로 하는 사람이지. 당신은 전자인가, 아니면 후자인가? \r\n#L0##b전자#l\n#L1#후자#l\n#k", ["2"] = "호오... 내 연구를 필요로 하는 사람은 참으로 오랜만이군. 그래, 뭘 만들고 싶으신 거요?\r\n#L0##b성장촉진제#l\n#L1#탈모예방제#l\n#L2#다이어트약#l\n#k", ["3"] = "성장촉진제...? 그거에 대한 연구라면 분명 예전에 완성되었지만 재료가 매우 까다로워 실제로 만들어 본 적은 거의 없는데... 어떤 재료가 들어가는지는 확실히 알고 계시오?\r\n#L0##b샐리온의 꼬리 10개, 라이오너의 꼬리 10개, 그류핀의 꼬리 10개, 페어리의 날개 10개#l\n#L1#샐리온의 꼬리 10개, 라이오너의 꼬리 10개, 그류핀의 꼬리 10개, 페어리의 더듬이 100개#l\n#L2#샐리온의 꼬리 10개, 라이오너의 꼬리 10개, 그류핀의 꼬리 10개, 페어리의 더듬이 10개#l\n#k", ["4"] = "알고 계신다니 다행이군... 그럼 재료를 구해 오시거든 내 바로 성장촉진제를 만들어 드리지. "},
	["yes"] = {["1"] = "재료만 갖춰지면 만드는 건 눈 깜빡할 사이라오. 그럼 어서 #b당신이 말한 성장촉진제의 재료#k를 구해 오시오."},
	["no"] = {["1"] = "재료 없이는 아무것도 만들 수 없는데..."},
	["stop"] = {
		["0"] = {["answer"] = "2", ["1"] = "모험하다 길을 잃은 모양이군. 편할대로 쉬다 가시오."},
		["1"] = {["answer"] = "1", ["2"] = "미안하오. 나는 그런 것은 만들 줄 모르오. 이래봬도 머리털은 충분히 많은지라... 하하하.", ["3"] = "흠... 별로 다이어트가 필요한 몸매는 아닌 것 같은데. 과도한 다이어트는 건강에 좋지 않다오."},
		["2"] = {["answer"] = "3", ["1"] = "그걸로 뭘 만들 수 있는 건지 전혀 모르겠군...", ["2"] = "그걸로 뭘 만들 수 있는 건지 전혀 모르겠군..."},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "성장촉진제의 재료를 모두 구해 오셨군... 그런데 성장촉진제를 어디에 쓰려고... 아니, 그거야 당신 마음이겠지. 그럼 금방 만들어 드리겠소."},
	["yes"] = {["1"] = "동물이 먹으면 부작용이 엄청나니 절대 드시지 마시오. 오직 식물에게만 사용하셔야 하오. "},
	["stop"] = {
		["item"] = {["1"] = "아직 성장촉진제의 재료를 구하지 못하신 모양이군... #b재료는 당신이 더 잘 알고 있겠지...#k"},
	},
}
return nTable
end