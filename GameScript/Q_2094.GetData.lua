return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1022007,
	["lvmin"] = 52,
	["quest"] = {{["id"] = 2093, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1022007,
	["item"] = {{["id"] = 4000034, ["count"] = 20}},
	["mob"] = {
		[1] = {["id"] = 2130103, ["count"] = 40},
		[2] = {["id"] = 3110100, ["count"] = 250}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 20000,
	["item"] = {
		{["id"] = 4000034, ["count"] = -20},
		{["id"] = 2043302, ["count"] = 1, ["prop"] = -1, ["job"] = 1197073},
		{["id"] = 2044702, ["count"] = 1, ["prop"] = -1, ["job"] = 1197073},
		{["id"] = 2043002, ["count"] = 1, ["prop"] = -1, ["job"] = 3279875},
		{["id"] = 2044002, ["count"] = 1, ["prop"] = -1, ["job"] = 3279875},
		{["id"] = 2043102, ["count"] = 1, ["prop"] = -1, ["job"] = 3279875},
		{["id"] = 2044102, ["count"] = 1, ["prop"] = -1, ["job"] = 3279875},
		{["id"] = 2043202, ["count"] = 1, ["prop"] = -1, ["job"] = 3279875},
		{["id"] = 2044202, ["count"] = 1, ["prop"] = -1, ["job"] = 3279875},
		{["id"] = 2044302, ["count"] = 1, ["prop"] = -1, ["job"] = 3279875},
		{["id"] = 2044402, ["count"] = 1, ["prop"] = -1, ["job"] = 3279875},
		{["id"] = 2043702, ["count"] = 1, ["prop"] = -1, ["job"] = 5379077},
		{["id"] = 2043802, ["count"] = 1, ["prop"] = -1, ["job"] = 5379077},
		{["id"] = 2044502, ["count"] = 1, ["prop"] = -1, ["job"] = 1188873},
		{["id"] = 2044602, ["count"] = 1, ["prop"] = -1, ["job"] = 1188873},
		{["id"] = 2044902, ["count"] = 1, ["prop"] = -1, ["job"] = 1213473},
		{["id"] = 2044802, ["count"] = 1, ["prop"] = -1, ["job"] = 1213473}
	},
}
nTable["info"] = {
	["name"] = "악어퇴치1",
	["parent"] = "늪지대의 악어",
	["order"] = 1,
	["0"] = "페리온의 인디언들에게 무슨 일이 있었다는데...이얀을 찾아가서 이야기를 들어보자.",
	["1"] = "페리온에 있는 이얀을 찾아갔다. 그녀는 얼마전 늪지대로 사냥을 갔던 인디언들이 악어떼에게 습격을 받았다면서, 너무 많이 늘어나버린 악어떼를 퇴치해줄 것을 부탁했다. 우선 #b#o3110100# 250 마리#k와 #b#o2130103# 40 마리#k를 잡고 #b#t4000034# 20개#k를 가져다 달라고 한다.\n\n#o3110100#  #r#a20942##k\n#o2130103#  #r#a20941##k\n\n#i4000034##t4000034#  #b#c4000034##k / 20",
	["2"] = "페리온의 인디언들이 늪지대에 사는 악어떼의 습격을 받았다. 이얀의 부탁으로 늪지대에 사는 #b#o3110100# 250 마리#k와 #b#o2130103# 40 마리#k를 퇴치해줬다. 늪지대는 이제 안전해지려나?",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "오랫만에 뵙네요. 그동안 잘 지내셨나요? 요즘 페리온은 안 좋은 일이 생겨서 어수선하답니다. 얼마전에 페리온의 인디언 전사들이 악어가죽을 구하기 위해 커닝시티 부근의 늪지대로 사냥을 간 적이 있는데, 그만 악어떼의 습격을 받고 심한 부상을 입고 말았답니다.", ["2"] = "오랫동안 늪지대에 사람이 발길이 뜸했었는데 그 사이 악어의 수가 급격하게 늘어나서 지나다니는 사람들을 공격하는 모양이에요. '주먹펴고 일어서'님께서도 이일로 걱정이 많으시답니다. 그래서 부탁을 좀 드리고 싶은데 들어주시겠어요?"},
	["yes"] = {["1"] = "감사합니다. 이번 일로 '주먹펴고 일어서'님께서 늪지대 악어 퇴치을 위해 용병을 고용하기로 하셨어요. 하지만 매우 바쁘신 분이라 그 일을 저에게 부탁하셨답니다. 늪지대로 가셔서 #r#o3110100# 250 마리#k와 #r#o2130103# 40 마리#k를 잡고 그 증거로 #b#t4000034# 20개#k를 가지고 돌아와주세요.", ["2"] = "늪지대는 커닝시티 하수로를 통해 들어갈 수 있다고 하더군요. 당신은 무척 강해보이셔서 믿음이 가네요. 하지만 항상 조심하셔야해요. 악어들이 매우 난폭해져 있거든요."},
	["no"] = {["1"] = "강해보이시는 분이라 부탁을 드리려던건데...늪지대에 악어떼가 계속 늘어난다면 정말 위험할 거에요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "아! 돌아오셨군요. 이렇게 빨리 돌아오시다니 역시 제 예상이 틀리지 않았어요. 당신은 강한분이셨군요. 이제 늪지대의 악어도 어느 정도 수가 줄어들었겠네요. 정말 다행이에요. ", ["2"] = "#b#t4000034##k는 가져오셨나요? 그리고 감사의 뜻으로 답례를 준비했는데 어떤 것이 필요하세요?"},
	["yes"] = {["1"] = "이 #b#t4000034##k은 치료제로도 쓰이거든요. 악어떼의 습격으로 다친 마을사람들을 치료하기 위해 부탁드린거였어요.  제가 드린 주문서는 저희 마을 사람들이 감사의 뜻으로 준비한거랍니다. 유용하게 쓰시길 바래요."},
	["stop"] = {
		["item"] = {["1"] = "늪지대에 사는 #r#o3110100# 250 마리#k와 #r#o2130103# 40 마리#k를 잡고 #b#t4000034# 20개#k를 가져와주세요."},
		["mob"] = {["1"] = "늪지대에 사는 #b#o3110100# 250마리#k와 #b#o2130103# 40마리#k를 잡고 #b#t4000034# 20개#k를 가져와주세요."},
	},
}
return nTable
end