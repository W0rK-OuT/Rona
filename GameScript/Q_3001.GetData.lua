return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2010000,
	["lvmin"] = 40,
	["quest"] = {{["id"] = 3039, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2030001,
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031049, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 1200,
	["nextQuest"] = 3040,
}
nTable["info"] = {
	["name"] = "브라보하사의 행방",
	["parent"] = "알파소대 연락망",
	["order"] = 3,
	["1"] = "#m211000000#에서 만난 #b#p2020003##k는 #b#p2010000##k, #b#p2030001##k, #b#p2030002##k을 차례로 만나고 돌아와 달라는 부탁을 해왔다. #p2010000#를 만났으니 이제 #p2030001#를 만날 차례이다.",
	["2"] = "#p2030001#를 만나서 #t4031049#을 받았다.",
	["area"] = 33,
	["summary"] = "브라보하사를 찾아라.",
	["rewardSummary"] = "경험치 1,200\r\n'브라보하사의 부탁' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "자... 그럼 다음에 만날 사람은 #p2030001#인가... 그 녀석도 분명 나처럼 뭔가를 찾아냈을지도 모르는 일이니 빨리 찾아가 보라구. 그럼 난 이만!"},
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "음? 자네는 이미 나와 만나지 않았나! 내가 준 #b#t4031049##k을 반드시 #b#p2020003##k님께 전해달라고. 부탁해~! 그럼 난 임무 수행중이라 바빠서... 이만"},
	},
	["ask"] = {"가는 길에 문서 조각을 잃어버렸나 보군. 다시 받아 가게."},
}
return nTable
end