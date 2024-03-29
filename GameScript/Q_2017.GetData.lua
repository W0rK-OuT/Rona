return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032100,
	["lvmin"] = 25,
	["interval"] = 0,
	["job"] = {100, 110, 111, 112, 120, 121, 122, 130, 131, 132, 200, 210, 211, 212, 220, 221, 222, 230, 231, 232, 300, 310, 311, 312, 320, 321, 322, 400, 410, 411, 412, 420, 421, 422, 430, 431, 432, 433, 434, 500, 510, 511, 512, 520, 521, 522, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512, 2100, 2110, 2111, 2112, 2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1032100,
	["item"] = {{["id"] = 4001000, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4000,
	["item"] = {
		{["id"] = 4001000, ["count"] = -1},
		{["id"] = 4003002, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4003003, ["count"] = 1, ["prop"] = 1}
	},
}
nTable["info"] = {
	["name"] = "아르웬과 유리구두",
	["0"] = "엘리니아의 요정 아르웬이 뭔가를 잃어버렸다는데...",
	["1"] = "엘리니아의 아르웬이라는 요정이 몇 일 전에 페리온으로 가는 길에 불덩이를 온 몸에 휘감고 있는 몬스터의 습격을 받아 소중한 #b유리구두#k를 잃어버리고 말았다고 말했다. 요정들은 반짝이는 아름다운 물건에 대한 집착이 대단하기 때문에 꼭 되찾고 싶어하는데... 페리온 근처에서 몬스터를 사냥하다 보면 아르웬의 유리구두를 발견할 수 있을지도 모른다.\n\n#i4001000# #t4001000# #b#c4001000#/1#k",
	["2"] = "엘리니아의 아르웬에게 그녀가 그토록 소중하게 여기는 유리구두를 찾아 주었다. 파이어보어라는 사나운 멧돼지가 가지고 있던 것을 우연히 얻게 되다니... 운이 정말 좋은걸? 아르웬은 보답으로 요정족의 물건을 주었다. 이렇게나 아름답게 반짝이다니... 특별한 물건을 만드는 데 쓸 수 있지 않을까?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "며칠 전 #m102000000#으로 가는 길에 불덩이를 온 몸에 휘감고 있는 몬스터의 습격을 받아 소중한 #b유리구두#k를 잃어버리고 말았습니다... 오래 전부터 간직하고 있던 물건인데 되찾고 싶어요...", ["2"] = "우리 요정족은 반짝이는 아름다운 물건에 대한 집착이 대단하기 때문에 인간들에게는 하찮아 보여도 저는 정말 그 물건이 필요해요. 인간에게 도움을 청하고 싶지는 않았지만... 도와 주세요..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "어머...! 그 반짝이는 물건은 제가 잃어버렸던 유리구두...! 저기... 그 물건 저에게 돌려주지 않겠어요? 어차피 당신에게는 별로 도움이 되지 않는 물건일테니..."},
	["yes"] = {["1"] = "당신에게 우리 요정족만이 드릴 수 있는 특별한 아이템을 드렸습니다. 소중한 아이템이니 특별한 곳에 유용하게 써 주셨으면 하네요. 그럼 안녕히..."},
	["stop"] = {
		["item"] = {["1"] = "아직 저의 소중한 유리구두를 찾지 못하신 것 같군요. #m102000000# 주변에서 나타나는 불덩이를 온 몸에 휘감고 있는 몬스터가 제 유리구두를 가져가 버렸답니다. 제발 찾아 주세요... 부탁드립니다..."},
	},
}
return nTable
end