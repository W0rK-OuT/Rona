return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2091001,
	["lvmin"] = 71,
	["quest"] = {{["id"] = 3836, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2091001,
	["item"] = {{["id"] = 4000288, ["count"] = 10}, {["id"] = 4000298, ["count"] = 10}, {["id"] = 4000282, ["count"] = 50}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1500,
	["item"] = {
		{["id"] = 4000298, ["count"] = -10},
		{["id"] = 4000288, ["count"] = -10},
		{["id"] = 4000282, ["count"] = -50}
	},
}
nTable["info"] = {
	["name"] = "도공의 술법",
	["parent"] = "잊혀진 선인",
	["order"] = 3,
	["1"] = "도공은 태륜이 그동안의 고행을 통해 술법의 힘을 많이 약화시켰다며, 거기에 도공의 술법으로 힘을 보태면 요괴선사의 술법이 깨질 것 같다고 말했다. 도공의 술법을 위해서는 몇 가지 재료가 필요하다는데... \n\n#i4000288# #t4000288# #b#c4000288##k/10 \n#i4000298# #t4000298# #b#c4000298##k/10 \n#i4000282# #t4000282# #b#c4000282##k/50",
	["2"] = "도공이 술법을 시작했지만... 결과는 실패였다. 노공에게 이 사실을 알리자.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "태륜은 사람을 피하기 위해서만 마을 밖에 나가 있는 것이 아니라오. 강직한 성품이었던 그 아이는 정신을 차리자마자 자신이 저지른 죄가 얼마나 큰 것인지 깨닫고 속죄하기 위해 정신을 차리고 있는 모든 시간을 고행에 쏟고 있다오.", ["2"] = "그동안의 고행이 효과가 있는 모양이오. 태륜을 옭아매고 있던 술법이 예전보다 많이 약해졌소. 태륜이 정신을 차리고 있는 시간도 점점 길어져가고 있다오. 지금이라면 이 도공의 술법이 요괴선사의 술법을 깨뜨릴 수도 있을 것 같소.", ["3"] = "하지만 술법에는 준비가 필요한 법. 요괴선사의 힘을 물리치기 위해서는 몇 가지 재료가 필요한데... 그것들을 구하는데 도움을 주실 수 없겠소?"},
	["yes"] = {["1"] = "그렇다면 #r낡은 종이 10장#k, #r부러진 사슴 뿔 10개#k, #r천도씨앗 50개#k를 부탁하지. 모두 이 무릉 주위에서 구할 수 있는 것들이니 당신 정도로 강한 모험가라면 어렵지 않을 거라 믿소."},
	["no"] = {["1"] = "어려우시다니 어쩔 수 없지... 재료 없이 술법을 쓰는 것은 쉽지 않은 일인데 어쩐다?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "모든 재료를 구해오셨구려... 그럼 잠시만 기다려 주시오. 마를 깨뜨리는 정화의 술을 사용해 보도록 하겠소..."},
	["yes"] = {["1"] = "......", ["2"] = "...이런...!", ["3"] = "술법 사용 중에 요괴선사의 방해가 있었소. 이제 태륜에게 흥미를 잃고 있다고 생각했는데... 아니었어. 요괴선사는 태륜을 지켜보며 그 아이를 미끼로 호시탐탐 무릉의 다른 선인들까지 노리고 있는 것이었소...!", ["4"] = "문제는 무엇보다 태륜에게 있다오. 속죄를 원하는 태륜의 마음이, 오히려 요괴선사의 술법을 더 강하게 만들고 있지. 그 아이의 착한 성품이 이 순간 그 아이를 마의 주박에 가둬놓고 있구려. 그것만 아니라면 그 아이를 구할 수도 있을 텐데... 후우...", ["5"] = "태륜의 마음이 조금이라도 가벼워지기 전까지는 요괴선사의 술법에서 그 아이를 구할 수 없을 것 같소... 면목 없구려. #b노공#k에게도 미안하다 전해주시오..."},
	["stop"] = {
		["item"] = {["1"] = "아직 술법에 필요한 재료를 모두 구하지 못하셨구려. 파마의 술에는 #b낡은 종이 10개#k와 #b부러진 사슴 뿔 10개#k, #b천도씨앗 50개#k가 필요하다오. "},
	},
}
return nTable
end