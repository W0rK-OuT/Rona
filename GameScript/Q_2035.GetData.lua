return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1040000,
	["lvmin"] = 50,
	["quest"] = {{["id"] = 2018, ["state"] = 2}},
	["job"] = {100, 110, 120, 130, 111, 121, 131, 112, 122, 132, 1100, 1110, 1111, 1112, 2100, 2110, 2111, 2112},
}
nTable["check1"] = {
	["npc"] = 1040000,
	["item"] = {{["id"] = 4011005, ["count"] = 10}, {["id"] = 4000046, ["count"] = 3}, {["id"] = 4000030, ["count"] = 50}, {["id"] = 4003000, ["count"] = 40}, {["id"] = 4031042, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 22000,
	["item"] = {
		{["id"] = 4031042, ["count"] = -1},
		{["id"] = 4011005, ["count"] = -10},
		{["id"] = 4000030, ["count"] = -50},
		{["id"] = 4003000, ["count"] = -40},
		{["id"] = 4000046, ["count"] = -3},
		{["id"] = 1002100, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "경비병 루크의 모험 결심",
	["0"] = "경비병 루크가 새로운 결심을 했다는데...",
	["1"] = "던전 입구에서 경비를 서고 있는 루크를 다시 만났다. 그때 뱀술은 모두 어머니와 먹어 버려서 남은게 없다나... 아무튼 루크는 지루한 경비병 생활을 끝내고 모험을 떠날 결심을 했다고... 모험에 필요한 장갑을 만들기 위해 페리온의 스미스가 #b검은 깃털 1개, 오리할콘 10개, 용의 가죽 50개, 나사 40개, 타우로스피어의 뿔 3개#k를 가져오라고 했다는데! 역시... 모아와 달라는 거겠지? 아참... 검은 깃털은 엘리니아의 요정들이 알고 있을지도 모른다나~\n\n#i4011005# #t4011005# #b#c4011005##k/10\n#i4000046# #t4000046# #b#c4000046##k/3\n#i4000030# #t4000030# #b#c4000030##k/50\n#i4003000# #t4003000# #b#c4003000##k/40\n#i4031042# #t4031042# #b#c4031042##k/1",
	["2"] = "루크에게 장갑을 만들기 위해 필요한 재료들을 가져다 주고 대대로 내려오던 소중한 투구인 #b낡은 브론즈 노르만 헬름#k을 받았다. 좀 손해보는 기분이지만... 대대로 내려오는 가보를 준다니 화를 낼수도 없고...T_T 듣자하니 선더가 이 투구를 더 좋은 투구로 만들어 준다는데, 페리온의 선더에게 찾아가 봐야 겠는걸...",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "앗! 너는 예전 어머니께 드릴 음식을 만들 수 있도록 도와줬던 그 녀석이구나~ 이거 미안한걸... 뱀술은 나랑 어머니랑 다 먹어버렸거든... 헤헤.... 그나저나 너... 몰라보게 강해졌는걸? 잘하면 나를 뛰어넘을지도 모르겠어! 뭐, 그럴 일은 없겠지만 말야! 하하하~", ["2"] = "좋아... 그 정도로 강해진 너라면 아마 해낼 수 있을지도...실은 나 모험을 준비중이거든. 이런 곳에서 경비를 서는것도 지겨워 져서 말야. 그래서 좋은 장비를 만들어 보려고 #m102000000#의 #p1022004#에게 찾아갔더니... 글쎄 터무니없는 재료를 구해오라지 뭐야! 그렇게 귀한 걸 어떻게 구해오라는 건지...", ["3"] = "나도 너처럼 전사가 되 보려고 하거든. 그래서 그런데 말야... #p1022004#가 가져오라는 재료들을 대신 좀 구해다 주지 않겠어? 내가 구해보려고 했지만 역부족이라서 말이지... 대신 그냥 해달라는 건 아냐. 사례는 충분히 할테니... 어때? 서로 좋은일 아니겠어?"},
	["yes"] = {["1"] = "좋았어! 실은 좋은 장갑을 만들어 보고 싶은데... 그 장갑을 만들기 위해서는 #b#t4031042# 1개, #t4011005# 10개, #t4000030# 50개, #t4003000# 40개 그리고 #t4000046# 3개#k가 필요하다더군. 아참, #b#t4031042##k은 요정들이 알고 있을지도 모르고... 그럼 부탁해! 이것만 가져다 주면 좋은걸 줄테니까 말야!"},
	["no"] = {["1"] = "여러 가지로 바쁜 모양이지? 나중에 시간이 난다면 내 부탁 좀 꼭 들어달라구~! 나한테는 정말 중요한 일이거든~!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "이런! 정말로 모두 구해올 줄이야. 좋았어! 이걸 #p1022004#에게 가져다 주기만 하면... 으흐흐... 엄청난 장갑을 만들 수 있겠는걸? 아참 그렇지... 이렇게 내 부탁을 들어줬으니 좋은걸 줄게. 우리집 대대로 내려오는 투구인데... 선더씨가 더 좋은걸로 만들어 줄지도 모르고..."},
	["yes"] = {["1"] = "#b#t1002100##k 하나 잘 받았겠지? 도와줘서 고마웠어. 꼭 여행이 도움이 될 테니까 가져가서 잘 쓰라고~! 그럼 난 어서 장갑을 만들러 가봐야 겠는걸~"},
	["stop"] = {
		["item"] = {["1"] = "아직 장갑을 만들 재료를 구해오지 못한거야? #b#t4031042# 1개, #t4011005# 10개, #t4000030# 50개, #t4003000# 40개 그리고 #t4000046# 3개#k를 구해와 줘! #b#t4031042##k은 요정들이 알고 있을지 몰라. 그럼 부탁해~!"},
	},
}
return nTable
end