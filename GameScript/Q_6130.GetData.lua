return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081200,
	["item"] = {{["id"] = 4001107, ["count"] = 1}},
	["job"] = {232},
	["skill"] = {{["id"] = 2321006}},
}
nTable["check1"] = {
	["npc"] = 2060100,
	["item"] = {{["id"] = 4001107, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100000,
}
nTable["info"] = {
	["name"] = "검은 책",
	["parent"] = "카론의 노트",
	["order"] = 1,
	["0"] = "묘한 책을 습득하였다. 표지 뿐만 아니라 그 내용이 모두 검은 색으로 되어 있는 읽을 수 없는 책… 쉽게 생각하기에는 왠지 책에서 느껴지는 기운이 심상치 않다. #b#p2081200##k님이라면 이 책에 대해 알고 계시지 않을까…?",
	["1"] = "#p2081200#님께서는 이 책에 대해 알고 싶다면 심해의 마녀 #b#p2060100##k에게 가 보라고 하셨다. #p2060100#…? 어째서 #p2081200#님께서는 직접 책에 대해 알려 주시지 않는 걸까? #p2060100#라면 이 책에 대해 알고 있을까?\n\n#i4001107##t4001107#  #b#c4001107# / 1#k",
	["2"] = "#p2060100# 역시 이 책이 어떤 책인지 알고 있지는 않았다. 하지만 그녀는 #b책을 볼 수 있는 방법#k을 알고 있는 것 같았다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "당신에게서 법칙에 위배되는 힘을 가진 물건의 기운이 느껴지는군요. 어떤 의문을 가지고 이 곳까지 왔나요, 젊은 마법사여…?", ["2"] = "그 책은… 그 책은 무척 위험한 진리를 담은 책입니다. 차가운 침묵과 날카로운 공포, 그것을 감추고 있는 책이에요. 하지만 그건… 어쩌면 당신에게는 필요한 것일지도 모르겠군요. ", ["3"] = "이후의 일은 당신의 선택에 맡기겠어요. 당신 역시 극을 바라보는 마법사… 더 이상의 조언은 필요하지 않겠지요. 당신이 원하는 길을 선택하도록 하세요. 흔들림 없는 안정인가, 아니면 위험한 힘인가... ", ["4"] = "#b#t04001107##k에 대해 더 알고 싶으신가요?"},
	["yes"] = {["1"] = "그렇군요… 당신은 더 큰 힘을 원하는군요. 아니, 어쩌면 당연한 것일까요? 당신은 인간이니까요.", ["2"] = "저 심해에서 태양을 피해 오랫동안 마법을 익혀온 사람이 있어요. #b마녀 #p2060100##k. 그녀를 찾아가 보세요. 그녀라면 당신이 원하는 지식을 드릴 수 있을 것입니다. 당신의 선택이 현명했기를 바라며…"},
	["no"] = {["1"] = "그렇군요. 당신은 안정을 택했군요. 어쩌면 그것이 현명한 선택일지도 모르지요. 어떤 선택을 했던 후회하지 않길 바래요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이 깊은 바다 속까지 무슨 일이지? \n …#p2081200#? #p2081200#라면 #m240010501#에 계신 바로 그 #p2081200#님을 말하는 건가? 이미 초월의 경지에 다다르신 고매한 마법사께서 미천한 마녀에게 무슨 볼일이 있으시다는 건지 모르겠군. ", ["2"] = "아니… 알겠어. 이 묘한 기운. 이건, 네가 가지고 있는 그 책에서 느껴지는 기운이로군. 그 책에 대해 알기 위해 날 찾아 온건가?"},
	["yes"] = {["1"] = "재미있군. 이 차갑고도 음습한 기운은 마치 죽음의 공포를 느끼게 하는군… 흠. 미안하지만 이 #p2060100#로서도 이 책에 대해 잘 알지는 못 해. 하지만 이 책을 #b어떻게 하면 읽을 수 있는지#k는 알고 있지."},
	["stop"] = {
		["npc"] = {["1"] = "#b#p2060100##k에겐 가 보지 않을 생각인가요? 그것이 당신이 원하는 것이라면 존중하겠지만… "},
		["item"] = {["1"] = "뭐야? 무슨 볼 일이지? 일이 없다면 썩 나가. 마음 편히 태양을 볼 수 있는 자 따위, 달갑지 않아!"},
	},
}
return nTable
end