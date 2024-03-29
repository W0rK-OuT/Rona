return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020009,
	["job"] = {212, 222, 232},
}
nTable["check1"] = {
	["npc"] = 2040052,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 200000,
}
nTable["info"] = {
	["name"] = "로베이라의 책",
	["parent"] = "샤모스의 과거",
	["order"] = 1,
	["0"] = "#p2020009#님께서 하고 싶은 이야기가 있다는데…",
	["1"] = "#p2020009#님께서는 꼭 보여주고 싶은 책이 있다며 핼리오스탑의 #b#p2040052##k를 찾아가 보라고 하셨다. ",
	["2"] = "#p2040052#는 책을 찾아 주기로 했다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "네 번째 전직까지 마친 너에게 보여주고 싶은 책이 있다. 네 번째 전직을 마친 자만이, 그 책을 볼 자격이 있으니까. 어때, 관심이 있느냐."},
	["yes"] = {["1"] = "그렇다면 핼리오스탑의 #b#p2040052##k를 찾아가 봐라. 그에게 책을 맡겨 놓았다."},
	["no"] = {["1"] = "싫다면 어쩔 수 없지..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#p2020009#님께서 보내신 분이 당신이신가요? 오오… 과연 한 눈에 보기에도 강력한 마법사님으로 보이는군요."},
	["yes"] = {["1"] = "그 분께서 묘한 책을 오래 전에 맡겨 두셨답니다. 잠시만 기다리세요. 찾아 가지고 오겠습니다."},
	["stop"] = {
		["npc"] = {["1"] = "어서 #b#p2040052##k에게 안 가고 뭘하는 거냐."},
	},
}
return nTable
end