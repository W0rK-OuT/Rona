return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041023,
	["quest"] = {{["id"] = 6294, ["state"] = 2}},
	["job"] = {132},
}
nTable["check1"] = {
	["npc"] = 2041023,
	["item"] = {{["id"] = 4031474, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 300000,
	["item"] = {
		{["id"] = 4031474, ["count"] = -1}
	},
	["skill"] = {
		{["id"] = 1320009, ["masterLevel"] = 5, ["job"] = {132, 0}}
	},
}
nTable["info"] = {
	["name"] = "영혼의 계약서",
	["parent"] = "영혼 축복",
	["order"] = 2,
	["1"] = "#q1321007#에 관해 설명을 한 플로는 #q1321007#의 힘을 깨우고 싶거든 그것을 깨울 수 있도록 #b#t4031474##k부터 구해 오라고 했다.\n\n#i4031474##t4031474#  #b#c4031474# / 1#k",
	["2"] = "#t4031474#로 #q1321007#의 힘의 일부를 깨웠다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "하지만 #r#q1321007##k의 힘을 깨우고 싶으시다니. 그건 꽤 어려운 일인데요? ", ["2"] = "#r#q1321007##k가 가지고 있던 힘은 분명 강력해요. 하지만 그렇기 때문에 그의 힘의 대부분은 영혼의 계약으로 완전히 묶여 버렸죠. 그 힘을 사용하고 싶다면 영혼의 계약서를 가지고 오셔야 해요. 계약서의 조항을 조금 고치면 그의 힘도 사용할 수 있을 거예요."},
	["yes"] = {["1"] = "가져 오시겠다고 말씀하셨으니 가르쳐 드릴게요. #r#q1321007##k의 #b#t4031474##k라면 #b#o8160000##k가 가지고 있답니다. 그것만 있다면 계약서를 고치는 일은, 이 마술사 플로가 해드리도록 하지요. "},
	["no"] = {["1"] = "에에, 싫으신가요? 하긴. 계약이니 뭐니 머리가 아프긴 하죠."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4031474#를 구해 오셨군요! 이거면 #q1321007#의 힘을 풀어줄 수 있겠네요. "},
	["yes"] = {["1"] = "계약서의 조항을 고쳤어요! #q1321007#가 가지고 있던 축복의 힘을 사용할 수 있게 되었어요! 축하 드립니다~ 하지만 그것으로는 완전히 힘을 되찾은 것은 아니랍니다."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4031474##k는 #b#o8160000##k가 가지고 있답니다. 구하기 쉽지 않은 물건이니 조심하세요~"},
	},
}
return nTable
end