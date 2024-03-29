return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022006,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 22545, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1032001,
	["endscript"] = "q22546e",
	["quest"] = {{["id"] = 22547, ["state"] = 2}},
	["item"] = {{["id"] = 4161050, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4161050, ["count"] = 1}
	},
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4161050, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "드래곤의 종류와 특징(하)",
	["area"] = 7,
	["0"] = "#b#m101030401##k에 계신 #b#p1022006##k씨에게 #t4161050#권을 받자.",
	["1"] = "윈스턴씨에게 받은 #t4161050#를 잘 읽어보자. #p1013000#에 대해 좀 더 알 수 있을지도 모른다. 다 읽은 후에 #m101000000# #m101000003#에 계신 #b#p1032001##k씨에게 돌려 드리자.\r\n\r\n#y22547# #b(#u22547#)#k",
	["2"] = "#p1032001#씨는 드래곤에 관한 또 다른 책이 들어오거나, #p1032001#씨의 친구인 #m240000000# 마을의 #p2081000#씨에게 뭔가 새로운 정보가 들어오면 알려주겠다고 말했다.",
}
nTable["say0"] = {
	["base"] = {["1"] = "#o3210100#를 퇴치해 줘서 고맙네. 이 #t4161050#는 나에겐 더 이상 쓸모가 없으니 필요하다면 #b자네가 잘 읽고 #m101000000#의 #m101000003#에 반납#k해 주게. "},
	["yes"] = {["1"] = "책을 늦게 반납한다고 혼나는 건 아닌가 모르겠군... 에이, 설마. 그렇지는 않겠지? 목숨을 걸고 사수해서 그을린 자국 하나 없이 돌려주는데..."},
	["no"] = {["1"] = "응? 책이 필요해서 #o3210100#를 퇴치해 준 게 아닌가? 필요 없다면 내가 좀 더 읽지 뭐. 혹시 생각이 바뀌건 말하게나."},
}
nTable["say1"] = {
	["stop"] = {
		["default"] = {["1"] = "응? #t4161050#는 아직 찾지 못한 건가? #p1032104# 박사에게 듣기로 자네가 #b#p1022006##k에게 받으러 #b#m101030401##k으로 갔다던데..."},
		["npc"] = {["1"] = "아직 책은 반납하지 않은 건가? #b#m101000000#의 #m101000003##k에 되도록 빠른 시일 안에 반납헤 주게. 너무 늦었어..."},
		["item"] = {["1"] = "응? #t4161050#는 아직 찾지 못한 건가? #p1032104# 박사에게 듣기로 자네가 #b#p1022006##k에게 받으러 #b#m101030401##k으로 갔다던데..."},
	},
	["ask"] = {"아니 자네 책을 잃어버리면 어떻게 하나? 내가 주워서 다행이지 하마터면 #o3210100#의 불에 타버릴 뻔 했어. 제발 잃어버리지 말고 #m101000000# #m101000003#에 반납해 주게."},
}
return nTable
end