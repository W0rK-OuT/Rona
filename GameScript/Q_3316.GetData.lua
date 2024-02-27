return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111001,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3315, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111007,
	["endmeso"] = 50000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500,
	["money"] = -50000,
}
nTable["info"] = {
	["name"] = "브로커 한의 정보",
	["parent"] = "알카드노와 실종된 연금술사",
	["order"] = 2,
	["1"] = "진실을 밝힐 사람이 필요하다. 그렇게 말한 #p2111001#는 #p2111002#에 대해 이야기 했다. 그의 말에 따르면 #p2111002#은 실종되기 얼마 전부터 #p2111007#과 자주 접촉했다는 것 같은데... 그럼 #b#p2111007##k을 찾아가 보자. 브로커 한과 대화를 하려면 어느 정도 메소를 가지고 가야겠지...",
	["2"] = "#p2111007#은 #p2111002# 대해 뭔가 알고 있는 듯 하다. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네를 완전히 믿는 것은 아니야. 하지만 그렇기에 오히려 자네에게 이 일을 맡길 수 있을 것 같군. 제뉴미스트와도 알카드노와도 상관없는 제 삼자의 눈으로 #p2111002#을 보고 그가 뭘 원했는지, 그리고 그것이 정당했는지 아닌지... 판단해 주게."},
	["yes"] = {["1"] = "#p2111002#은 실종되기 얼마 전부터 수상한 자와 접촉을 했다고 하더군. #r#p2111007##k을 아는가? ...소문이 좋지 않은 자야. 하지만 거래만큼은 확실하다고 하니, 믿을 수 있을 듯 하네. 그에게서라면 #p2111002#에 대한 정보를 얻을 수 있을 걸세.", ["2"] = "아... 한가지 알아두게. #p2111007#은 메소를 좋아하는 자라네. 메소가 없는 사람은 상대조차 하지 않는다고 하니, 어느 정도 준비해 두고 가는 게 좋을 걸세. "},
	["no"] = {["1"] = "진실이 두려워진 겐가? 그렇다면 어쩔 수 없겠지. ...#p2111002#에 관해서는 더 이상 파고들지 않는 게 현명할지도 모르니... "},
}
nTable["say1"] = {
	["base"] = {["1"] = "...원하는 것이 있다면 말만 해. 물건? 정보? 아니면 사람? 뭐라도 구해다 주지... 응? 실종된 연금술사, #p2111002#... 말인가? 흐음...  맞아. 그가 실종되기 얼마 전부터 이 #p2111007#을 자주 찾아왔지. 그런데, 그게 왜? 뭐? #p2111002#에 대한 정보를 달라고? ", ["2"] = "뭐 좋아. 그에 대한 정보는 #b50000메소#k다. 네가 정보료를 지불한다면, 그에 대해 이야기해주지."},
	["yes"] = {["1"] = "큭큭큭... 이거 의외의 벌이로군. 좋아. 좋아. 그럼 #p2111002#에 관한 정보를 알려줄 테니, 준비가 되면 찾아오라고.  "},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2111007##k에게는 가지 않은 건가? 그는 장사꾼. 그것도 어둠을 파는 장사꾼이니 메소 없이는 대화하기 힘들 거라네."},
	},
}
return nTable
end