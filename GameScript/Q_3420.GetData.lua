return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2041011,
	["lvmin"] = 44,
	["quest"] = {{["id"] = 3419, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2041011,
	["mob"] = {
		[1] = {["id"] = 4230118, ["count"] = 120}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 19000,
	["item"] = {
		{["id"] = 1032018, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "만회의 노력",
	["0"] = "통제구역에 있는 메소레인저 옐로우를 찾아가보자.",
	["1"] = "지구방위본부 주변 필드에서 메소레인저 옐로우를 만났다. 그녀는 내가 외계인 그레이를 도운 사실을 이미 알고 있다면서 적으로 오인되고 싶지 않다면 만회의 노력을 해야 한다고 말했다. 다시 한 번 믿음을 얻기 위해서는 외계인을 처치해야 한다. \n\n#o4230118# #r#a34201#",
	["2"] = "한 순간의 실수로 외계인 그레이를 돕긴 했지만 메소레인저 옐로우가 준 임무를 무사히 수행해서 어느 정도 신뢰는 회복한 것 같다. 역시 외계인들은 우리와 평화롭게 지낼 마음이 없는 모양인걸…",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐음... 당신... 혹시 일전에 #b#p2050002##k의 부탁을 들어준 적이 있는 건 아닌가요? 정말 곤란하군요... 최근 들어 선량한 시민을 꼬임에 빠뜨려 지구방위본부의 극비 정보를 빼내가는 외계인이 있다는 정보를 입수했는데... 실제로 그런 일이 있었을 줄이야...", ["2"] = "이 일이 지구방위본부에 들어가는 것은 시간 문제입니다. 우리의 정보력이라면 며칠 내로 퍼져 당신을 외계인의 추종자로 취급할지도 모르는 일이죠. 하지만... 당신도 모르고 저지른 일 같은데... 어떤가요? 다시 믿음을 얻기 위해 제가 드리는 임무를 수행해 보시겠어요?"},
	["yes"] = {["1"] = "잘 생각하셨어요. 이대로라면 언제 지구방위본부의 적으로 취급받을지 모르는 일이거든요. 당신에게 드릴 임무는 간단합니다. 당신이 정말로 외계인들의 추종자가 아니라는 것을 몸으로 증명해 주시면 됩니다. 정말 추종자가 아니라면 그들을 괴멸시키는 데 도움을 주실 수 있겠지요.", ["2"] = "지구방위본부 주변 필드까지 들어온 외계인 중 #b#o4230118# 120마리#k를 쓰러뜨리고 와 주세요. 이 녀석들은 꽤 강하니까 여러 명이서 힘을 합쳐서 쓰러뜨리면 좀 더 빨리 임무를 완료할 수 있을 거에요. 그럼 당신이 무사히 임무를 수행하고 돌아오시기를 기다리고 있겠습니다."},
	["no"] = {["1"] = "흐음... 역시 실수로 외계인을 도운 것이 아니라 정말 그들의 추종자가 되어버리신 건가요? 사실이 아닐 거라고 믿고 있겠어요. 마음이 바뀌는 대로 곧장 저에게 돌아와 주셔야 할겁니다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "호오... #b#o4230118##k를 모두 쓰러뜨리고 오셨군요. 쉬운 일은 아니었을텐데 그만큼 믿음을 회복하고자 하는 마음이 강했던 모양이죠? 좋습니다... 당신은 지구방위본부의 확실한 동료라는 사실을 상부에 보고해 드리도록 하겠습니다. 그리고 작은 보상을 드릴테니 받아주세요."},
	["yes"] = {["1"] = "#b#t1032018# 1개#k는 잘 받으셨겠죠? 여행에 도움이 되길 바라겠습니다. 그럼 두번 다시 외계인을 돕는 일은 없을거라고 믿고 있겠습니다. 그리고 나중에 다시 시간이 나신다면 저를 찾아 주세요. 분명 당신의 도움이 필요해질 것 같으니까요."},
	["stop"] = {
		["mob"] = {["1"] = "아직 제가 드린 임무를 완수하지 못하셨군요. 지구방위본부의 신뢰를 회복하기 위해서는 필드에 있는 #b#o4230118# 120마리#k를 쓰러뜨리고 돌아와 주셔야 합니다."},
	},
}
return nTable
end