return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101005,
	["lvmin"] = 30,
	["job"] = {300},
}
nTable["check1"] = {
	["npc"] = 1012100,
	["item"] = {{["id"] = 4031622, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031622, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 3500,
	["item"] = {
		{["id"] = 4031622, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "바이런의 추천서!!",
	["0"] = "#m260000000#에 온지도 꽤 되어가는 것 같은데... 때마침 #p2101005#이 나를 만나고 싶다는 연락을 보내왔다. 무슨 일이지? ",
	["1"] = "#p2101005#은 내가 전직할 때가 된 것 같다면서 빅토리아 아일랜드에 있는 #p1012100#에게 날 추천하고 싶다고 했다. 바이런의 추천서를 가지고 #b#p1012100##k를 찾아가보자.",
	["2"] = "#p2101005#이 준 추천서를 #p1012100#에게 보여주었다. #p1012100#는 #p2101005#의 추천이라면 믿을 수 있다면서 전직을 하고 싶다면 언제라도 찾아오라고 했다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "어? 그동안 잘 지냈나요? 그 동안 당신을 쭉 지켜보았어요. 제가 보기엔 당신도 이제 전직할 때가 된 것 같은데... 당신을 #p1012100#님께 추천하고 싶어서요. 당신 생각은 어때요?"},
	["yes"] = {["1"] = "오래 전부터 #p1012100#님과는 친분이 있답니다. #m100000000#에 있는 #b#p1012100##k님을 찾아가 보세요. 그 분을 통해서 전직도 하실 수 있을거에요."},
	["no"] = {["1"] = "아직은 때가 아니라고 생각하시는 건가요? 참 겸손하시군요. 하지만 전직도 때가 있는 것이랍니다. 때를 놓치지 않게 주의하세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "누구세요? 저에게 줄 물건이라도 가지고 계신건가요?"},
	["yes"] = {["1"] = "#p2101005#의 추천장이군요. 그가 추천한 사람이라면 전직할 자격이 충분한 분이시겠군요. 그러고보니 전직할 때가 된 것 같은데 온 김에 시험을 보시는건 어떠세요?"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p1012100##k님께 가보지 않으셨나요?"},
		["item"] = {["1"] = "이 곳에서는 신중한 궁수로 전직할 수 있답니다."},
	},
	["ask"] = {"추천장을 잃어버리셨다구요? 다시 써 드리도록 하죠.", "이번에는 잃어버리지 않도록 조심하세요."},
}
return nTable
end