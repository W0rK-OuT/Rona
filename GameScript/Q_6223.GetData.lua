return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012017,
	["quest"] = {{["id"] = 6222, ["state"] = 2}},
	["job"] = {212},
}
nTable["check1"] = {
	["npc"] = 2020005,
	["item"] = {{["id"] = 4031451, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031451, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 200000,
	["item"] = {
		{["id"] = 4031451, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "소환물의 뼈대",
	["parent"] = "역속성",
	["order"] = 4,
	["0"] = "#b#p2012017##k는 #b#t4031451##k를 만들어 주겠다며, 잠시 기달려 달라고 했다.",
	["1"] = "#b#p2012017##k는 이제 #b#t4031451##k를 만들어 주었으니 과학자의 일은 끝났다고 했다. #b#p2020005##k에게 가져가 마법의 힘을 불어 넣는 방법을 알아봐야 겠다.\n\n#i4031451##t4031451#  #b#c4031451# / 1#k",
	["2"] = "#b#p2020005##k는 #b#t4031451##k에 마법의 힘을 넣는 방법을 알아보겠다며, 잠시 후 다시 말을 걸어 달라고 했다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "광물의 비율을 잘 맞춰서 섞어 틀을 만들고, 속성을 잘 받아들일 수 있도록 한 다음... 이 부분의 스위치를 작동하면! 자! 다 됐다. 속성을 구현할  #b#t4031451##k야!"},
	["yes"] = {["1"] = "후훗, 어딜 봐도 완벽하지? 이제 남은 일은 #b#t4031451##k에 마법의 힘을 불어 넣어서 영혼을 담을 수 있도록 하는 것 뿐이야. 하지만 그건 마법으로 해야 할 일이니 네가 알아서 하도록 해. ", ["2"] = "아! 마법적인 거라면 #p2020005#가 전문이니, 아마도 #p2020005#가 방법을 알고 있을 것 같군. 응? 그러고 보니 역속성 이론을 만든 것도 #p2020005#라고 했던가? 그럼 잘 되었군. #b#t4031451##k를 가지고 #b#p2020005##k를 찾아가 봐."},
	["no"] = {["1"] = "여기까지 해놓고 이제 싫다고? 뼈대를 만들어 달라고 찾아온 건 너였잖아."},
}
nTable["say1"] = {
	["base"] = {["1"] = "허허. 소환물이라! 재미있는 이론이로군! 그 #b#p2012017##k란 자, 어떤 마법사인가? 으응? 마법사가 아니라 과학자라고? 어쨌든 재미있군. 좋아. 여기에 역속성의 마법을 부여하면 되는 것 아닌가?", ["2"] = "하지만 단순히 물건에 마법을 부여하는 걸로는 안 돼. 그런 방법으로는 역속성이 된다 해도, 자네의 속성이 가진 힘이 너무 강해서 거기에 눌려버릴 거야. 그래서는 소환물이 제대로 힘을 발휘하지 못하지.", ["3"] = "음, 방법을 생각해 볼 테니, #b#t4031451##k를 이리 주고 잠시 후 다시 말을 걸어 주게나."},
	["stop"] = {
		["item"] = {["1"] = "역속성에 대한 연구는 잘되고 있나? 내가 도와줄 일이 있다면 언제라도 말만 하게나."},
	},
	["ask"] = {"뭐야? #b#t4031451##k를 잃어버린거야? 다행히 재료가 남아 더 만들어 놓은게 있어. 이젠 잃어버리지 말라고!"},
}
return nTable
end