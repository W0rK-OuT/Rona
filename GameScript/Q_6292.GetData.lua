return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041021,
	["quest"] = {{["id"] = 6291, ["state"] = 2}},
	["job"] = {132},
}
nTable["check1"] = {
	["npc"] = 2041021,
	["item"] = {{["id"] = 4000148, ["count"] = 200}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100000,
	["item"] = {
		{["id"] = 4000148, ["count"] = -200}
	},
	["skill"] = {
		{["id"] = 1320008, ["masterLevel"] = 15, ["onlyMasterLevel"] = 1, ["job"] = {132}}
	},
}
nTable["info"] = {
	["name"] = "검은 영혼이 가진 치유의 힘1",
	["parent"] = "영혼 치료",
	["order"] = 3,
	["1"] = "#b#p2041021##k는 #q1321007#의 힘을 더 깨우고 싶거든 그것을 깨울 수 있도록 #b#t4000148# 200개#k를 구해 오라고 했다.\n\n#i4000148##t4000148#  #b#c4000148# / 200#k",
	["2"] = "#t4000148#로 검은 영혼의 힘의 일부를 깨웠다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "#q1321007#의 힘을 더 깨우고 싶으신가요? 사실 그가 가진 힘을 더 이상 깨우는 것은 곤란해요. 기억까지 깨워 버리게 될 수도 있거든요. 그걸 막기 위해서 #b#t4000148##k라는 것으로 #q1321007#를 제어해야 한답니다. 그렇게 해서 #q1321007#의 힘을 깨우시겠어요?"},
	["yes"] = {["1"] = "그렇다면 #b#t4000148# 200개#k를 구해 오세요. 그 정도는 되어야 #q1321007#의 능력을 제어할 수 있을 것 같네요."},
	["no"] = {["1"] = "싫으시다면 어쩔 수 없죠. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "#t4000148# 200개를 구해 오셨군요. 이거라면 #q1321007#의 능력을 제어할 수 있어요. "},
	["yes"] = {["1"] = "#q1321007#의 힘의 일부를 더 각성시켰습니다. 동시에 그의 힘을 제어했어요. 일부만을 사용할 수 있도록. 혹시 그의 힘을 더 깨우고 싶으시다면 다시 말씀하세요."},
	["stop"] = {
		["item"] = {["1"] = "#b#t4000148# 200개#k를 구하는 것이 쉽지 않죠?"},
	},
}
return nTable
end