return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081200,
	["lvmin"] = 200,
	["job"] = {200, 210, 220, 230, 211, 221, 231, 212, 222, 232},
}
nTable["check1"] = {
	["npc"] = 2081200,
	["item"] = {{["id"] = 1902001, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1902001, ["count"] = -1},
		{["id"] = 1902002, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "드래곤 라이더 ",
	["0"] = "메이플 월드의 누구보다도 강한 사람. 더 이상 오를 곳이 없는 경지에 다다른 사람. 그것은 바로 당신이다. 200 레벨을 달성한 당신을 위해, 모든 마법사들의 사제 #b#p2081200##k가 준비한 것이 있다고 한다.",
	["1"] = "궁극의 마력을 지닌 수많은 마법사들이 갖길 원했지만, 누구의 소유도 되지 않았던 #t1902002#를 소개해 주겠다는 #p2081200#... 메이플 월드에서 가장 강한 자만이 그와 친구가 될 수 있다고 하는데...",
	["2"] = "더 이상 올라갈 곳이 없는 지고의 경지에서 새로운 친구를 얻었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "나는 그대를 알고 있어요. 아주 오래 전 마력이 충만한 숲에서 마법사로 태어났고, 설원의 땅에서 그 강함을 인정받았으며... 메이플 월드 모든 마법사들의 사제인 나에게서 새로운 이름을 지음받은 그대여... ", ["2"] = "이제는 더 이상 오를 곳이 없는 지고의 경지에 이른 그대에게 새로운 동반자를 소개할까 해요. 궁극의 마력을 지닌 수많은 마법사들이 원했지만, 누구도 소유도 된 적이 없는 존재. #t1902002#를... 어떤가요. 그를 원하나요?"},
	["yes"] = {["1"] = "인간이 아니되, 인간보다 더 높은 자존심을 가진 #t1902002#이지만... 초월의 경지에 이른 그대라면 그의 주인이 될 자격이 충분할 것 같군요. ", ["2"] = "미지의 존재와 우정을 나눌 준비가 되었거든, 다시 나를 찾아오세요."},
	["no"] = {["1"] = "아직 마음의 준비가 되지 않은 모양이군요... 이미 메이플 월드의 누구도 그대를 이길 수 없는데, 무엇을 두려워 하는 건가요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "동반자를 맞을 준비가 되었거든, 이리 가까이 오세요. 이제 그대는 지금껏 만나보지 못한 새로운 존재와 마주할 수 있을 것입니다. "},
	["yes"] = {["1"] = "그대는 이미 인간을 초월한 자... 저 고고한 #t1902002#가 머리를 숙이는 건 그대뿐일 테지요. ...#t1902002#와 함께 메이플 월드에서 더 많은 것을 경험하길...  "},
	["stop"] = {
		["item"] = {["1"] = "그대에겐 #t1902002#를 맞이할 준비가 부족해 보이는군요. #t1902002#와 함께 하고자 한다면, #t1902001# 정도는 다루어 본 적이 있어야 합니다. #b#t1902001##k와 #b#t1912000##k을 모두 갖추기 전까진, #t1902002#에게 당신을 소개할 수 없어요."},
	},
}
return nTable
end