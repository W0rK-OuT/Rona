return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2050001,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3400, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2050005,
	["item"] = {{["id"] = 4031100, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031100, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 2400,
	["nextQuest"] = 3402,
}
nTable["info"] = {
	["name"] = "김박사의 전언 : 신형 로봇의 설계도",
	["parent"] = "김박사의 전언",
	["order"] = 1,
	["0"] = "지구방위본부의 김박사가 뭔가 굉장한걸 완성했다는데...",
	["1"] = "지구방위본부 사령실에 있는 김박사로부터 현재 새롭게 만들고 있는 로봇의 설계도를 철이, 훈이, 건이에게 보여주고 돌아와 달라는 부탁을 받았다. 우선 #b격납고 어딘가에 있는 철이#k를 만나봐야 겠는걸?",
	["2"] = "김박사로부터 새롭게 만들고 있는 로봇의 설계도를 철이에게 보여주라는 임무를 받아 보여주었다. 그도 만족하는 눈치이다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐음... 됐다! 드디어 새로운 로봇의 #b#t4031100##k가 완성됐어! 하하~! 이 설계도 그대로의 로봇만 완성 된다면 밖에 있는 수 많은 외계인들도 더 이상 우리를 위협하진 못하겠지! 그래, 거기 자네! 보아하니 별로 할 일도 없어 보이는데 간단한 심부름 좀 해주지 않겠는가?"},
	["yes"] = {["1"] = "고맙네! 그럼 내가 주는 이 기계식 #b#t4031100##k를 지구방위본부 어딘가에 흩어져 있을 #b#p2050005#, #p2050006#, #p2050007##k에게 보여주고 돌아와 주게나. 가장 처음 만나야 할 사람은 #p2050005#일세. 아마도 격납고 어딘가에서 휴식을 취하고 있을 것 같군 그래."},
	["no"] = {["1"] = "한가해 보인다는 소리에 부탁을 들어줄 마음이 싹 사라진건가? 자네와 비슷한 녀석들을 많이 알고 있지... 흐음... 아무튼 마음이 바뀌게 된다면 다시 나에게 말을 걸어 주게나. 자네 별로 할 일이 없는거 다 알고 있으니까 말일세."},
}
nTable["say1"] = {
	["base"] = {["1"] = "호오... 이게 바로 몇 개월동안 #b#p2050001##k님이 고생해서 완성하신 새로운 로봇의 #b#t4031100##k로군요. 흐음... 여기 눈동자를 갖다 대면 내용을 확인할 수 있도록 보안 장치가 되어 있군요. 역시 지구방위본부 최고의 권위자 다운데요? 그럼 이제부터 내용을 확인해 볼까요..."},
	["stop"] = {
		["npc"] = {["1"] = "내가 준 기계식 #b#t4031100##k를 지구방위본부 어딘가에 흩어져 있을 #b#p2050005#, #p2050006#, #p2050007##k에게 보여주고 돌아와 주게나. 기쁜 소식을 빨리 전하고 싶거든. 가장 처음 만나야 할 사람은 #p2050005#일세. 아마도 격납고 어딘가에서 휴식을 취하고 있을 것 같군 그래."},
		["item"] = {["1"] = "흐음... #b#p2050001##k님이 새로운 로봇의 #b#t4031100##k를 완성하셨다는 말씀이세요? 하지만 어디 #t4031100#가 있다는 건지... 오다가 잃어버리신 건 아닌가요? 만일 그렇다면 다시 #p2050001#님께 돌아가 보세요. 이럴때를 대비해 마련한 장치가 있을 테니까요."},
	},
	["ask"] = {"저런... 내가 준 #b#t4031100##k를 잃어버린 건가? 이런... 조심했어야지! 만에 하나 외계인의 손에 들어가면 어쩌려고 그러나! 흐음... 하지만 이럴때를 대비에 #b#t4031100##k에 자동귀환 장치를 해 두었네. 다시 한 번 자네에게 줄테니 이걸 #b#p2050005#, #p2050006#, #p2050007##k에게 보여주고 와 주게나."},
}
return nTable
end