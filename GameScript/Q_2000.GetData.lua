return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1020000,
	["lvmin"] = 10,
}
nTable["check1"] = {
	["npc"] = 1020000,
	["item"] = {{["id"] = 4000018, ["count"] = 50}, {["id"] = 4000003, ["count"] = 30}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 300,
	["item"] = {
		{["id"] = 1092000, ["count"] = 1, ["prop"] = 9},
		{["id"] = 1092001, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4000003, ["count"] = -30},
		{["id"] = 4000018, ["count"] = -50}
	},
}
nTable["info"] = {
	["name"] = "'돼지와 함께 춤을'의 집수리",
	["0"] = "#m102000000#의 '#p1020000#'씨가 집수리를 한다는데...",
	["1"] = "흙먼지 날리는 고원마을 #m102000000#... 그곳에서 나는 '#p1020000#'이라는 특이한 차림의 남자를 만났다. 그는 나에게 집수리에 필요하다며 #b#t4000003# 30 개#k와 #b#t4000018# 50 개#k를 모아와 달라고 부탁했다. 부탁을 들어준다면 그가 가진 방패를 받을수도 있겠지만 만일 거절한다면 그에게 잡아먹히는 일이... 일어나지는 않겠지...?\n\n#i4000018# #t4000018# #b#c4000018##k/50\n#i4000003# #t4000003# #b#c4000003##k/30",
	["2"] = "#m102000000#에서 살고 있는 '#p1020000#'에게 #b#t4000003# 30 개#k와 #b#t4000018# 50 개#k를 모아다 주었다. 이걸로 그는 집수리를 할 수 있게 되었다. 보답으로 받은 방패... 이곳 저곳 긁힌 자국이 있는 것이 어쩐지 오래되어 보이는데 이대로 사용해도 괜찮은 걸까...?",
	["area"] = 30,
	["summary"] = "돼지와 함께 춤을의 집수리에 필요한 재료를 모아다 주어야 한다.",
	["demandSummary"] = "#i4000018:# #t4000018:# #c4000018# / 50\r\n#i4000003:# #t4000003:# #c4000003# / 30\r\n",
	["rewardSummary"] = "경험치 300\r\n#Wprob#\r\n#i1092000:# #t1092000:# #c1092000# 1 개\r\n#i1092001:# #t1092001:# #c1092001# 1 개\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "#b#t4000003# #e30#n개#k와 #b#t4000018# #e50#n개#k를 가져다 줄수 없겠나? 이번에 우리 집을 더 늘릴 생각이거든. 부탁을 들어준다면 대신 나에게는 필요 없는 좋은 #b방패#k를 주겠네... 나무의 모습을 하고 있는 녀석들을 쓰러뜨리면 많이 얻을 수 있을거야."},
}
nTable["say1"] = {
	["base"] = {["1"] = "대단하군! 이렇게 많이 모을수 있었다면... 자네도 대단한 실력자라는 이야기로군! 흠... 좋네. 약속대로 방패를 주지. 내가 아끼는 방패라네. 소중히 간직해 주길 바라네."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000003# #e30#n개#k와 #b#t4000018# #e50#n개#k... 아직 다 모으지 못한 모양이로군. 힘내게~! 그리고 다 모은후 꼭 나에게 다시 오도록~!"},
	},
}
return nTable
end