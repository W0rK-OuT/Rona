return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101018,
	["quest"] = {{["id"] = 9954, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101014,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 2002004, ["count"] = 10}
	},
}
nTable["info"] = {
	["name"] = "아리안트 투기대회",
	["parent"] = "아리안트 투기대회 개최",
	["order"] = 2,
	["1"] = "#p2101018#는 험상궂은 얼굴로 각오가 되어 있지 않은 사람은 #b투기대회#k에 참가할 수 없다고 단호하게 말했다. ...투기대회? 그게 뭐냐고 묻자 #p2101018#는 용기있는 모험가가 아니면 알 필요도 없다며, 두렵지 않다면 #b투기대회장#k까지 찾아와 보라고 말했다.",
	["2"] = "#p2101009#의 이름으로 열리는 왕궁사냥대회... 그게 #b#m260000000# 투기대회#k의 정체인 것 같다. 흠... 몬스터를 사냥해서 보석으로 만든다는 건 왠지 음습하지만... #b모험가들끼리의 기량을 겨루는 경기#k라는 면에서 굉장히 재밌을 거 같은걸...?",
	["area"] = 50,
}
nTable["say0"] = {
	["base"] = {["1"] = "...흠? #b투기대회#k에 참가하고 싶은 건가? 그렇다면 이 쪽에 접수신청을 하게. 미리 말해두지만, 각오가 되어 있지 않은 사람은 투기대회에 참가할 수 없... 뭐? 자네 투기대회가 뭐냐고 물은 건가? 투기대회에 대해서 들어본 적 없나?", ["2"] = "...흠! 용기있는 모험가만이 참가할 수 있는 사냥의 제전, 그게 바로 투기대회이지만... 자네에게는 알려줄 필요도 없었던 것 같군. 모험가라고 하기에 너무 허약한데다가 겁쟁이로 보이니 말이야. ", ["3"] = "표정을 보니 허약하다는 말이 불쾌한 모양이군. 하지만 단순히 사냥만 하는 전투에 익숙해진 사람은 감히 투기대회에 도전해봤자 패배할 것이 불보듯 뻔해. 그런데도... 투기대회에 참가하는 것이 두렵지 않다면 #b투기대회장#k까지 찾아와 보게. "},
	["yes"] = {["1"] = "투기대회장 안까지 찾아올 정도로 용기가 있다면, 자네에게 투기대회에 대해 자세히 알려주도록 하지."},
	["no"] = {["1"] = "역시 겁쟁이로군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "흠... 여기까지 오다니. 생각보다 담은 크군. 하지만 #b#m260000000# 투기대회#k에 대한 설명을 듣고도 과연 그 용기가 계속될 수 있을까?", ["2"] = "이 #m260000000# 투기대회는 위대하신 #p2101009# 폐하의 명으로 열리는 왕궁사냥대회지. 하지만 일반적인 사냥과는 달리, 몬스터를 없애버리는 것이 아니라, 속성의 돌로 흡수해 보석으로 만드는 놀라운 대회이지. ", ["3"] = "흡수하는 것이 쉬울 거라고 생각한다면 오만이야. 몬스터 타격시 힘을 적절히 조절하는 기술, 상태를 알아보는 예리한 눈, 그리고 단번에 보석으로 만들어버리는 날카로움까지... 모두 갖추지 않으면 이 사냥은 쉽지 않아.", ["4"] = "무엇보다 이 대회는 혼자서 하는 것이 아니라, #b여러 모험가들과 섞여 그들과 서로 경쟁하며 기량을 겨뤄야 하는#k 투기대회! 어지간한 모험가라면 좋은 성적을 거둘 수 없어. "},
	["yes"] = {["1"] = "그대로 꽁무니를 빼고 달아나지 않은 것만은 칭찬해 주도록 하지. 하지만 과연 자네가 투기대회에 참가할 수 있을까? 그건 장담할 수 없을 것 같은데... 스스로의 실력을 증명해 보고 싶다면, #b투기대회#k에 참가해 보라고!"},
	["stop"] = {
		["npc"] = {["1"] = "역시 #b투기대회장#k 안으로 발을 딛지 못하는군. 겁쟁이 녀석. "},
	},
}
return nTable
end