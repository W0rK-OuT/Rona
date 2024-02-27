return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300005,
	["lvmin"] = 30,
	["lvmax"] = 38,
	["interval"] = 0,
	["quest"] = {{["id"] = 2336, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1300005,
	["mob"] = {
		[1] = {["id"] = 3300000, ["count"] = 200},
		[2] = {["id"] = 3300001, ["count"] = 200},
		[3] = {["id"] = 3300002, ["count"] = 300},
		[4] = {["id"] = 3300003, ["count"] = 400},
		[5] = {["id"] = 3300004, ["count"] = 400}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4400,
	["item"] = {
		{["id"] = 2043021, ["count"] = 1, ["prop"] = -1, ["job"] = 1180673},
		{["id"] = 2043116, ["count"] = 1, ["prop"] = -1, ["job"] = 2050},
		{["id"] = 2043216, ["count"] = 1, ["prop"] = -1, ["job"] = 2050},
		{["id"] = 2043311, ["count"] = 1, ["prop"] = -1, ["job"] = 18450},
		{["id"] = 2044024, ["count"] = 1, ["prop"] = -1, ["job"] = 2050},
		{["id"] = 2044116, ["count"] = 1, ["prop"] = -1, ["job"] = 2050},
		{["id"] = 2044216, ["count"] = 1, ["prop"] = -1, ["job"] = 2050},
		{["id"] = 2044316, ["count"] = 1, ["prop"] = -1, ["job"] = 2050},
		{["id"] = 2044416, ["count"] = 1, ["prop"] = -1, ["job"] = 2099202},
		{["id"] = 2043711, ["count"] = 1, ["prop"] = -1, ["job"] = 4198404},
		{["id"] = 2043811, ["count"] = 1, ["prop"] = -1, ["job"] = 4198404},
		{["id"] = 2044511, ["count"] = 1, ["prop"] = -1, ["job"] = 8200},
		{["id"] = 2044611, ["count"] = 1, ["prop"] = -1, ["job"] = 8200},
		{["id"] = 2044711, ["count"] = 1, ["prop"] = -1, ["job"] = 16400},
		{["id"] = 2044816, ["count"] = 1, ["prop"] = -1, ["job"] = 32800},
		{["id"] = 2044909, ["count"] = 1, ["prop"] = -1, ["job"] = 32800}
	},
}
nTable["info"] = {
	["name"] = "페페킹의 주문서",
	["area"] = 30,
	["0"] = "페페킹은 물러 갔지만 #b#p1300005##k는 앞으로의 일 때문에 여전히 걱정이 많은 것 같다. 한번 찾아가 보자.",
	["1"] = "페페킹의 잔당 처치\r\n\r\n#o3300000# #a23371#\r\n#o3300001# #a23372#\r\n#o3300002# #a23373#\r\n#o3300003# #a23374#\r\n#o3300004# #a23375#\r\n\r\n",
	["2"] = "페페킹의 잔당을 처리하는 일을 도와주었다.",
	["demandSummary"] = "#o3300000# #a23371#\r\n#o3300001# #a23372#\r\n#o3300002# #a23373#\r\n#o3300003# #a23374#\r\n#o3300004# #a23375#\r\n",
	["rewardSummary"] = "경험치 4,400\r\n#Wselect#\r\n#i2043021:# #t2043021:# 1 개\r\n#i2043116:# #t2043116:# 1 개\r\n#i2043216:# #t2043216:# 1 개\r\n#i2043311:# #t2043311:# 1 개\r\n#i2044024:# #t2044024:# 1 개\r\n#i2044116:# #t2044116:# 1 개\r\n#i2044216:# #t2044216:# 1 개\r\n#i2044316:# #t2044316:# 1 개\r\n#i2044416:# #t2044416:# 1 개\r\n#i2043711:# #t2043711:# 1 개\r\n#i2043811:# #t2043811:# 1 개\r\n#i2044511:# #t2044511:# 1 개\r\n#i2044611:# #t2044611:# 1 개\r\n#i2044711:# #t2044711:# 1 개\r\n#i2044816:# #t2044816:# 1 개\r\n#i2044909:# #t2044909:# 1 개\r\n",
	["summary"] = "페페킹의 잔당을 처치",
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요. 머쉬킹 왕국의 영웅 #b#h0##k님. 저희 왕국을 떠나시기 전에 한가지만 더 부탁을 드릴께요.", ["2"] = "당연히 공짜는 아니고요 부탁을 들어주시면 얼마 전 정찰병이 습득해온 #b페페킹 왕의 무기 주문서#k들 중에서 필요한 것을 드릴께요."},
	["yes"] = {["1"] = "네. 고맙습니다. 다름이아니라 #b페페킹#k의 잔당을 소탕하는 일입니다. 저희 군대가 힘을 되찾아 진격하기 전에 조금이나마 부담을 덜어놓으면 좋을 것 같아서요."},
	["no"] = {["1"] = "갈길이 바쁘시다면 그냥 가셔도 괜찮습니다. 언제든 필요하면 다시 찾아 주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "벌써 그놈들을 혼내주고 오신건가요? 역시 용사님은 다르시군요! "},
	["yes"] = {["1"] = "부디 유용하게 쓰시기 바랍니다."},
	["stop"] = {
		["mob"] = {["1"] = "아직 조금 부족하신 것 같습니다. 더욱 많은 잔당들을 해치워 주세요."},
	},
}
return nTable
end